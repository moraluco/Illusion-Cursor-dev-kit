# soft-ue-cli 与 SoftUEBridge（操作备忘）

面向 **Agent/终端**：与 Kit 技能 **soft-ue-cli-ue-bridge** 配套；完整流程以该 SKILL 为准。

## 环境

- Python 3.10+，`httpx` 随 pip 安装。
- CLI 入口（PATH 未配置 Scripts 时推荐）：

```powershell
py -3 -m soft_ue_cli --help
```

## 工程路径（本项目）

- **项目根**（含 `ManteumTower.uproject`）：`D:\Workspace\MT\Engine\ManteumTower`。
- 在**该目录或其子目录**执行 CLI 时，可发现 `.soft-ue-bridge/instance.json`（插件写入，用于端口）。

## 自检

```powershell
cd D:\Workspace\MT\Engine\ManteumTower
py -3 -m soft_ue_cli check-setup
```

## 端口与多实例

- 默认 `http://127.0.0.1:8080`。
- 环境变量：`SOFT_UE_BRIDGE_PORT`、`SOFT_UE_BRIDGE_URL`。
- 多开编辑器时指定目标实例的 URL。

## 常用只读示例

```powershell
py -3 -m soft_ue_cli project-info
py -3 -m soft_ue_cli query-level --limit 30
py -3 -m soft_ue_cli query-blueprint /Game/Path/To/BP --include variables,functions
```

具体参数以 `--help` 为准。

## 验收

- `check-setup` 全部通过。
- 需要读图时：编辑器已运行，日志中有桥监听信息（见引擎输出）。
