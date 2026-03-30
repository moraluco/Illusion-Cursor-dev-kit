# 无人值守：启用 UE 与日志自动化

与 **交互式编辑器 + SoftUEBridge** 区分：CI / 夜间构建 / 无人值守 Agent 不能依赖「人打开 UE 看 Output Log」，应使用 **`UnrealEditor-Cmd`**、**退出码**与 **`Saved/Logs`**（及可选 **stdout**）。

## 为何不能用 soft-ue-cli

SoftUEBridge 在 **Commandlet / `-unattended` / 非交互进程**中**不启动** HTTP 服务。无人值守跑的是 **`UnrealEditor-Cmd.exe`**，此时 **soft-ue-cli 无法连桥**。读图、关卡查询仍以 **[soft-ue-cli.md](soft-ue-cli.md)** 为准（需交互式 `UnrealEditor.exe`）。

## 日志从哪里来

| 来源 | 说明 |
|------|------|
| 进程退出码 | 主判据；例如 AngelScript 测试脚本约定 0/1/2（见 **angelscript-tdd-agent-iteration**）。 |
| `Saved/Logs/*.log` | 每次运行会生成带时间戳的日志文件，路径为 **项目根**下的 `Saved/Logs/`。 |
| `-stdout` | 传给 `UnrealEditor-Cmd` 时可将部分日志打到 CI 控制台，便于即时查看。 |

**主流程**：以退出码判成败；失败或需排查时再打开对应 `.log` 全文或尾部。

## AngelScript 测试（项目内脚本）

在含 `ManteumTower.uproject` 的项目根执行（若项目提供 `Scripts\RunAngelscriptTests.ps1`）：

```powershell
.\Scripts\RunAngelscriptTests.ps1
```

解析规则与 Commandlet 直调见技能 **angelscript-tdd-agent-iteration**（`ANGELSCRIPT_TEST_RESULT`、`[FAILED]`、退出码）。

## 通用：仅跑 Editor-Cmd 并收集日志

可将 Kit 提供的脚本复制到项目 `Scripts/` 后使用，或从 Kit 路径直接调用：

```powershell
# 示例：AngelscriptTest Commandlet（引擎路径与工程路径请按环境修改）
& "D:\UnrealEngine\Engine\Binaries\Win64\UnrealEditor-Cmd.exe" `
  "D:\Workspace\MT\Engine\ManteumTower\ManteumTower.uproject" `
  -run=AngelscriptTest -unattended -stdout -nosplash -noscreenmessages
```

建议在无人值守场景额外加：

- `-NullRHI -NoSound`: 降低启动成本，避免 GPU/音频相关不确定性
- `-nop4`: 避免因本机 P4/登录态导致的卡顿或噪音（仍可在需要时移除）

封装「等待进程 + 定位最新日志 + 可选按关键字失败」见同目录 **[scripts/Run-UnrealEditorCmd-CollectLog.ps1](scripts/Run-UnrealEditorCmd-CollectLog.ps1)**。如遇到 Editor-Cmd 启动后**长时间不退出**，建议在项目侧再包一层 **超时 kill**（并 tail 最新 log），把“卡住点”稳定收敛成可复盘的失败。

## CI：归档日志与失败时 tail

以下示例供复制到**游戏仓库**的流水线（GitHub Actions）。将 `UE_EDITOR_CMD`、`PROJECT_DIR` 换成你的路径或密钥/变量。

### GitHub Actions（Windows runner）

```yaml
name: UE unattended (example)

on:
  workflow_dispatch:
  push:
    branches: [main]

jobs:
  angelscript-tests:
    runs-on: windows-latest
    steps:
      - uses: actions/checkout@v4

      - name: Run AngelScript tests (or UnrealEditor-Cmd)
        shell: pwsh
        working-directory: ${{ github.workspace }}/Engine/ManteumTower
        env:
          UE_EDITOR_CMD: ${{ secrets.UE_EDITOR_CMD }}
        run: |
          if (Test-Path .\Scripts\RunAngelscriptTests.ps1) {
            .\Scripts\RunAngelscriptTests.ps1
          } else {
            & $env:UE_EDITOR_CMD (Resolve-Path .\ManteumTower.uproject) -run=AngelscriptTest -unattended -stdout -nosplash -noscreenmessages
          }
          if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

      - name: Upload Saved/Logs
        if: always()
        uses: actions/upload-artifact@v4
        with:
          name: ue-saved-logs
          path: Engine/ManteumTower/Saved/Logs/
          if-no-files-found: warn

      - name: Tail latest log on failure
        if: failure()
        shell: pwsh
        working-directory: ${{ github.workspace }}/Engine/ManteumTower/Saved/Logs
        run: |
          $latest = Get-ChildItem -Filter *.log | Sort-Object LastWriteTime -Descending | Select-Object -First 1
          if ($latest) {
            Write-Host "---- tail $($latest.Name) ----"
            Get-Content $latest.FullName -Tail 120
          } else {
            Write-Host "No .log under Saved/Logs"
          }
```

要点：

- **`if: always()`** 上传日志：无论测试成败都保留现场。
- **`if: failure()`** 仅在步骤失败时 tail，减少成功构建的噪音。
- 路径 `Engine/ManteumTower` 按你仓库布局调整（若 `.uproject` 在仓库根，把 `working-directory` 与 artifact 路径改为 `.`）。

若 monorepo 根下工程位于 `Engine/ManteumTower`，可在游戏仓库中维护 **`.github/workflows/ue-unattended-logs.yml`**（与 Kit 中 YAML 思路一致：跑测试、`always` 上传 `Saved/Logs`、`failure` 时 tail），并设置仓库变量 **`UE_EDITOR_CMD`** 指向 `UnrealEditor-Cmd.exe`。

### GitLab CI（摘录）

```yaml
ue_as_test:
  stage: test
  tags: [windows, ue]
  script:
    - cd Engine/ManteumTower
    - powershell -File Scripts/RunAngelscriptTests.ps1
  artifacts:
    when: always
    paths:
      - Engine/ManteumTower/Saved/Logs/
```

## 交叉引用

- **soft-ue-cli / 桥**：仅交互式编辑器，见 [soft-ue-cli.md](soft-ue-cli.md) 与技能 **soft-ue-cli-ue-bridge**。
- **AS 测试运行与解析**：技能 **angelscript-tdd-agent-iteration**。
