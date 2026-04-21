# Write-AngelScript — 参考与常见坑

本文件由 **summarize-as-experience** 在沉淀 AS 经验时更新。用于写 `.as` 时的项目级约定、API 注意点与常见坑，写代码前应扫读。

---

## 写前自检清单

- [ ] 已查阅 `content/reference/Docs-UE-Angelscript`；**能开 UE 时已用 as-api-dynamic-query（或等价）核对符号**，未仅用 grep Kit AS_API
- [ ] 已查阅 Script-Examples（如 `Engine/Engine/Script-Examples/`）中的类似用法
- [ ] 保存 → 在编辑器/PIE 中验证；仅 AS 改动无需编译
- [ ] 若需测试：见技能 **angelscript-tdd-agent-iteration**（如 RunAngelscriptTests.ps1）

---

## 写法速查（精简）

### 类与继承

- 脚本类从 Blueprint 可继承的 C++ 类派生；命名：Actor 用 `A` 前缀，Component 用 `U` 前缀。
- 例：`class AMyActor : AActor { }`、`class UMyComponent : UActorComponent { }`。

### 属性（UPROPERTY）

| 需求           | 写法 |
|----------------|------|
| 仅脚本用       | 不加 UPROPERTY，直接写变量 |
| 编辑器可编辑   | `UPROPERTY()`，默认即 EditAnywhere + BlueprintReadWrite |
| 覆盖父类默认值 | `default bReplicates = true;`、`default Tags.Add(n"Tag");` |

- 子对象默认值：用 `default ComponentName.Property = value;`，不要用构造函数。
- **脚本类中引擎类型成员**：用**值类型**（如 `AActor OwnerActor`），**勿用句柄**（`AActor@ Owner`），否则易报 "Expected method or property" 等；赋值用 `Member = Param`，不要 `@Member = Param`。成员名避免与引擎常用名（如 `Owner`）冲突。

### 函数（UFUNCTION）

| 需求                     | 写法 |
|--------------------------|------|
| 仅脚本内调用             | 不加 UFUNCTION |
| 蓝图可调用               | `UFUNCTION()`，默认即 BlueprintCallable |
| 重写 C++ 的 Blueprint 事件 | `UFUNCTION(BlueprintOverride)`，如 BeginPlay、Tick |
| 让子类 Blueprint 可覆盖   | `UFUNCTION(BlueprintEvent)`，脚本里给默认实现（可空 `{}`） |

- 输出参数：`FVector&out OutPosition` 在蓝图中为输出引脚。**注意**：在 `interface` 的方法声明中**勿用 `&out`**，易触发解析错误；改用返回值或结构体。

### 组件

- 默认组件：`UPROPERTY(DefaultComponent, RootComponent)`、`UPROPERTY(DefaultComponent, Attach = SceneRoot)` 等；不用 C++ 构造函数。
- 取/建组件：`UMyComponent::Get(Actor)`、`GetOrCreate`、`Actor.GetComponent()` 等。

### 委托与 FName

- 委托绑定：`BindUFunction(this, n"FunctionName")`；被绑函数须为 `UFUNCTION()`。
- FName 字面量：`n"Literal"` 用于 BindUFunction、委托/事件名、TMap key 等。

### Function Libraries

- 以命名空间调用：`System::SetTimer(...)`、`Gameplay::...`、`Math::...` 等；`UKismetSystemLibrary` → `System::`；**Math:: 对应 C++ 的 FMath**，不是 KismetMathLibrary。

### 编辑器与打包

- 仅编辑器 API：用 `#if EDITOR` … `#endif` 包裹，否则打包会编译失败。
- 开发时保存即热重载；打包需预编译与 JIT 时，PrecompiledScript.Cache 与 exe 强绑定，换 exe 须重新生成。

---

## 常见坑

1. **不要用 #include**：UE-AS 不支持；所有 `Script/*.as` 统一编译，类型全局可见。写 `#include` 会报 "Unexpected token"。
2. **脚本类中引擎类型用值类型**：写 `AActor OwnerActor`，勿写 `AActor@ Owner`；避免成员名与引擎常用名（如 `Owner`）冲突。
3. **interface 中勿用 &out**：会触发解析错误；改用返回值或结构体表示输出。
4. **API 找不到 / 照搬线上报错**：**能开 UE** 时先用技能 **as-api-dynamic-query**（ASApiQuery）；**不能开 UE** 时用 **angelscript-api-query**（Kit AS_API → Hazelight）。**https://angelscript.hazelight.se/api/** 对应**另一工程**；仅作离线线索。**必须在当前工程内**（优先动态查询 +）**编译/对照 Script-Examples 与插件绑定**后再采用。C++ 的 `NotInAngelscript` 不暴露；弃用函数不绑定且无弃用警告。
5. **仅 Edit 无 Read 的属性**：在 AS 里**只能在 `default` 语句中访问**，运行时不可读写。
6. **热重载后异常**：避免依赖构造函数或静态初始化顺序；默认值用类内初始化或 `default`。
7. **Blueprint 拿不到脚本函数/属性**：检查是否加了 `UFUNCTION()`/`UPROPERTY()`，以及是否用了 BlueprintHidden/NotBlueprintCallable。
8. **脚本逻辑再走蓝图**：脚本里写逻辑并调用一个 `UFUNCTION(BlueprintEvent)` 空实现，子类 Blueprint 只实现该事件。
9. **C++ BlueprintNativeEvent 在 AS 中重写**：重写后**不能调用 C++ Super**；倾向用 BlueprintImplementableEvent 或把基础逻辑放到单独可调用函数。
10. **编辑器专用 API**：必须用 `#if EDITOR` … `#endif`，否则打包失败。
11. **调试（日志）**：`Print`/`Log`/`LogInfo`；可用 Unreal AngelScript 扩展下断点；`GetAngelscriptCallstack`/`FormatAngelscriptCallstack` 可打脚本栈。
12. **调试（屏显，避免刷屏）**：需要 **PIE/屏幕上** 的调试信息时，使用 **`System::PrintString`** 或 **`System::PrintText`**，并传入**非空**的 **`FName Key`**（最后一参）。同 Key 的消息会被**替换**；**禁止**在 Tick 里反复 `PrintString` 且**不传 Key**。签名以 **as-api-dynamic-query** 列出的 `System::` 符号 + 编译器为准；离线可查 Kit `API_Docs/System.md`。**不要**为此新增 C++ `UE_LOG` 包装或改引擎 Logging；AS 侧足够。
13. **调试（世界空间绘制）**：**不要**使用不存在的 **`Debug::`** 命名空间；箭头/线段等用 **`System::DrawDebug*`**（以动态查询 `filter`=`DrawDebug` 或 `System::` 为准）。
14. **`FInputActionValue`**：不要用 **`[]` 下标**（通常未绑定）。在带 **`AngelscriptEnhancedInput`** 的工程里用 **`GetAxis2D()` / `GetAxis1D()` / `GetBool()`**（见引擎插件 `Bind_FInputActionValue` 与 `EnhancedInputExamples`）。
15. **`GetComponentsByClass`**：弃用「往 out `TArray` 填」的旧重载；用 **返回 `TArray<UActorComponent>`** 的版本再 `Cast`。
16. **Enhanced Input 无响应（回调存在、按键无效果）**：若 **PlayerController** 侧 **`UPlayerInputComponent`** 在切换模式时 **`ClearAllMappings()`**，仅在角色 **`BeginPlay` 里加一次 `InputMappingContext`** 可能被清掉。需 **延后/在 `OnPlayerInputModeChanged` 再 `AddMappingContext`**，**`HasMappingContext`** 去重，并注意 **IMC 优先级**。详见 **`content/knowledge/05-gotchas.md`**、`03-angelscript-ue.md`。

---

## 项目级备注

*（下方由 summarize-as-experience 持续补充；保持简短、可复用。）*
