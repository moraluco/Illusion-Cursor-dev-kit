---
name: angelscript-tdd-agent-iteration
description: Agent 运行 AngelScript 测试并根据结果自动迭代修复。当用户要求跑测试并修复、TDD、根据测试结果迭代时执行；写 AS 的整体流程见 write-angelscript。
---

# AngelScript 测试自动运行与迭代

当用户要求「跑测试并修复」「TDD」「根据测试结果迭代」或修改了 `Script/**/*.as` 并希望验证测试时，按本技能执行。写 AS 时的整体流程（写前查参考、保存即验证等）见技能 **write-angelscript**。

所有路径与「项目根」以 Kit 工作区约定为准：**项目根**为含 `ManteumTower.uproject` 的目录（或当前工作区中的项目根）。

---

## 1. 运行测试

在**项目根**下执行（典型为 `Engine\ManteumTower` 或项目内 Script 所在根）：

```powershell
cd Engine\ManteumTower
.\Scripts\RunAngelscriptTests.ps1
```

若引擎不在默认路径，可设置环境变量或传参：

```powershell
$env:UE_ENGINE_PATH = "D:\UnrealEngine\Engine\Binaries\Win64"
.\Scripts\RunAngelscriptTests.ps1
```

或使用引擎自带的 Commandlet（需替换为实际引擎路径）：

```powershell
& "<EngineBinaries>\UnrealEditor-Cmd.exe" "Engine\ManteumTower\ManteumTower.uproject" -run=AngelscriptTest -unattended -stdout -nosplash -noscreenmessages
```

---

## 2. 解析运行结果

- **退出码**：0 = 全部通过，1 = 脚本编译失败，2 = 有测试失败。
- **输出中的标记**：
  - `ANGELSCRIPT_TEST_RESULT: PASS` / `FAIL`：总体结果。
  - `ANGELSCRIPT_FAILED_TESTS:` 下列出的是失败用例名（如 `ModuleName.Test_XXX`）。
  - `[FAILED] ModuleName.Test_TestCaseName`：失败用例。
  - 断言/编译错误会在日志中出现在对应 `[FAILED]` 之前，可能包含文件名、行号或 "Assertion failed" 信息。

用上述信息确定是哪些 `Test_XXX` 失败以及错误原因（断言失败、编译错误等）。

---

## 3. 失败时自动迭代

1. 根据失败用例名（如 `Test_ExampleAssertEquals`）和日志中的错误信息，定位到对应的 `.as` 文件（测试或被测逻辑）。
2. 修改脚本（修测试或修实现），保存。
3. 再次执行 `.\Scripts\RunAngelscriptTests.ps1`。
4. 重复 2–3，直到 `ANGELSCRIPT_TEST_RESULT: PASS` 或退出码为 0，或达到最大迭代次数（建议不超过 5 次）。

---

## 4. 约定

- 单元测试函数签名为 `void Test_<Name>(FUnitTest& t)`，通常位于 `Script/` 或 `Script/Test/` 下的 `.as` 中。
- 失败用例名格式为 `ModuleName.Test_TestCaseName`，可通过在 `Script/**/*.as` 中搜索 `Test_TestCaseName` 找到对应测试与模块。

---

## 与 write-angelscript 的协作

- **write-angelscript** 负责：写代码前的文档查阅、书写约定、保存即验证、输出要求。
- **本技能** 负责：运行 AngelScript 测试、解析结果、失败时自动迭代修复。写 AS 时若用户要求测试或 TDD，先按 write-angelscript 完成编写，再按本技能运行测试并迭代。

---

## 无人值守 CI 与日志

不依赖打开编辑器：使用 `UnrealEditor-Cmd`、**退出码**与 **`Saved/Logs`**。流水线示例、`Run-UnrealEditorCmd-CollectLog.ps1` 与 GitHub Actions 片段见 **[content/dev/unattended-ue-automation.md](../../content/dev/unattended-ue-automation.md)**。SoftUEBridge 在 Commandlet / `-unattended` 下不启动，**不能**用 soft-ue-cli 代替日志自动化。

---

## 交叉引用

- 入口不变的 subagents 增效：技能 **subagents-workflow-augmentation**
