# AngelScript 与 UE 集成 — 要点

与 Unreal AngelScript 相关的概念与使用约定，便于写脚本、查 API 时与 reference 对齐。

## 文档位置（优先查阅）

- **API 定义**：`content/reference/AS_API/` — 类、函数、枚举等官方 API 说明；查签名与用法时优先用此处。
- **集成与用法**：`content/reference/Docs-UE-Angelscript/` — 在 UE 中写 AS、脚本绑定、C++ 绑定、最佳实践等。
- **示例代码**：`content/reference/AS_Example/` — 归档的 AS 示例与参考脚本；查写法、风格与用法时在优先查阅范围内。

## 引擎内 AngelScript 作为编写参考

编写或阅读 AS 时，除 Kit 的 reference 外，可把**项目根下的引擎/项目脚本**当作活代码参考（风格、API 用法、与 UE 交互方式）。

| 位置（均相对于项目根） | 用途 |
|------------------------|------|
| `Engine/Engine/Engine/Plugins/Angelscript/` | 引擎 AngelScript 插件（C++ 与构建）；了解绑定与加载时可参考。 |
| `Engine/Engine/Script-Examples/` | 官方/示例脚本：`Examples/`（Actor、Timer、Delegate、UMG 等）、`GASExamples/`、`EnhancedInputExamples/`、`EditorExamples/`、`AS_Example/`（关卡示例）等；写 AS 时优先对照此处用法。 |

- 查 API 或集成说明 → 用 Kit 的 `content/reference/AS_API/`、`Docs-UE-Angelscript/`。
- 看具体写法与示例 → 优先用 Kit 的 `content/reference/AS_Example/`，或项目根下 Script-Examples、项目 Script；在 Cursor 中可用 @ 引用对应 `.as` 文件。

## 常用概念

- **AngelScript (AS)**：项目采用的脚本语言，用于 gameplay、逻辑扩展，与 UE C++/蓝图配合。
- **绑定**：C++ 暴露给 AS 的接口；文档见 Docs-UE-Angelscript 的 cpp-bindings 与 scripting 部分。
- **GameplayTags、FName 等**：在 AS 中的用法见 reference 下对应 scripting 文档。

## 编写与引用约定

- 写或改 AngelScript、或涉及 AS 与 UE 交互时，先在 `AS_API/`、`Docs-UE-Angelscript/`、`AS_Example/` 中查文档与示例；需要更多活代码时可参考项目根下引擎 Script-Examples 与项目 Script。
- 本 Kit 的 rule（`ue-dev-kit.mdc`）约定：AS 文档、API 与示例的参考位置为 Kit 的 `content/reference/`（含 AS_Example）；编写 AS 时并可引用项目根下引擎内脚本；AI 回答应优先引用此处与引擎内脚本，减少幻觉。

## 输入与调试键（经验）

- **按键事件**：需要「按某键触发一次」时，优先在 **SetupPlayerInputComponent** 里用 **UEnhancedInputComponent::BindDebugKey** 绑定键与回调，避免在 Tick 里用 `IsInputKeyDown` 轮询（不利于维护且每帧检查）。
- **写法示例**（在继承自 AAlsCharacterExample 的 AS 角色中）：
  - 重写 `SetupPlayerInputComponent(UInputComponent Input)`，内部 `Cast<UEnhancedInputComponent>(Input)`，非空时调用 `BindDebugKey(EKeys::F, this, n"OnDebugKeyF")`。
  - 定义无参回调（如 `void OnDebugKeyF()`）并加 `UFUNCTION()`，在回调里执行逻辑（如 `Print("test")`）。
- **父类调用**：若需先执行父类输入设置，在 AS 里对 `SetupPlayerInputComponent` 可调用 `Super::SetupPlayerInputComponent(Input)`；注意在部分 override（如 Tick）中 `Super::` 可能不可用，见 [05-gotchas.md](05-gotchas.md)。
- **Print**：调试输出可用 `Print("字符串")` 或 `Print(f"格式化", 5.f, FLinearColor::Red)` 等重载（项目内多处示例）。

### Enhanced Input（`FInputActionValue`、`InputMappingContext`）

- **`FInputActionValue` 在 AS 中的取值**：不要假设可用 C++ 的模板 `Get<>()` 或 **`operator[]`**；以引擎 **`AngelscriptEnhancedInput`** 插件对 `FInputActionValue` 的绑定为准（如 **`GetAxis2D()`**、**`GetAxis1D()`**、**`GetBool()`**）。范例见引擎 **`Script-Examples/EnhancedInputExamples/`**；易错表见 [05-gotchas.md](05-gotchas.md)。
- **`InputMappingContext` 被清空导致无输入**：若 **PlayerController** 使用自定义 **`UPlayerInputComponent`**，其在 **`BeginPlay`/`SwitchPlayerInputMode`** 等路径中可能调用 **`UEnhancedInputLocalPlayerSubsystem::ClearAllMappings()`**，再只加回项目默认的 Gameplay IMC。此时仅在 **Pawn/角色 `BeginPlay`** 里执行一次 **`AddMappingContext`**，可能被**后续**清掉，表现为 **`BindAction` 仍在但按键无响应**。处理方式：将 **`AddMappingContext` 封装为可重复调用**；在 **短延迟**（如 `System::SetTimer`）与 **`OnPlayerInputModeChanged`** 等事件中**再次添加**；用 **`HasMappingContext`** 避免重复；**优先级（Priority）** 与默认层错开，以免被完全覆盖。详见技能 **write-angelscript** § Enhanced Input。

## 扩展

易错点与排错见 [05-gotchas.md](05-gotchas.md)；新决策见 [04-decisions.md](04-decisions.md)。
