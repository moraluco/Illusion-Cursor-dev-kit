---
name: angelscript-api-query
description: >-
  仅离线：UE/ASApiQuery 不可用时的 AS API 回退（Kit AS_API → Hazelight）。非 P0；能开 UE 时勿启用本路径。写回 API_Docs 可选。禁止与 as-api-dynamic-query 平级竞争。
---

# AngelScript API 查询（离线回退 + 写回 Kit）

查找 UnrealEngine-AngelScript 的类、枚举、函数等。**本技能 = 备胎**：rule **as-api-dynamic-query-authority** 规定，凡**能启动 UE**，**必须**先用 **as-api-dynamic-query**。**不要**在能开 UE 时先 Read/grep **`content/reference/AS_API/`** 代替 HTTP 查询。

本技能用于：（1）**实在无法**使用 ASApiQuery（无编辑器、连接拒绝、`not_initialized` 长期不可用、CI 无头环境等）时的离线链；（2）从 Hazelight **摘录并写回** Kit，供无 UE 场景下检索。

所有路径均相对于 **Kit 根目录**（含本技能与 `content/` 的仓库）。

## 与 as-api-dynamic-query 的分工（必读）

| 场景 | 做法 |
|------|------|
| 能开 UE、工程带 ASApiQuery | **只用 as-api-dynamic-query**；禁止用本技能的「先查 Kit」路径抢答 |
| 不能开 UE 或 HTTP 不可用 | 使用本技能：**Kit AS_API** → 未命中再 **Hazelight**（仅参考）→ 可选写回 |
| 需要完整参数签名 | 动态查询仅返回符号名时，以 **`.as` 编译器报错/补全**、**Script-Examples**、插件绑定源码为准；离线时再查 Kit / Hazelight |

## Hazelight 站点与「当前工程」的关系（必读）

- **https://angelscript.hazelight.se/api/** 文档的是 **Hazelight 侧**工程里暴露的 API，与**本工作区项目**（引擎版本、启用插件、绑定、NotInAngelscript 裁剪等）**不是同一份代码**。
- **很多线上列出的类/方法在本项目里不存在、未绑定或签名不同**；反之本项目也可能有额外插件 mixin 而线上不全。
- **Hazelight 仅作「AS 用法与命名」的参考线索，绝不是「在本项目必可用」的事实。**  
  从线上或 Kit 里抄签名后，**在能开 UE 时应用 as-api-dynamic-query 或实际编译核验**；无法开 UE 时注明「待 UE 内验证」。

写回 `API_Docs` 时，可在文档中注明来源为 Hazelight 摘录，并提醒「以本工程 ASApiQuery / 编译为准」。

## 查询顺序（仅在本技能被触发时——即动态查询不可用）

1. **Kit 本地**  
   按 **`content/reference/AS_API/API_Index.md`** 索引查，或对 **`content/reference/AS_API/API_Docs/`** grep 关键词（如 `LineTrace`、`System::`、类名）。
2. **本地未命中再查线上（仅作参考）**  
   访问 https://angelscript.hazelight.se/api/ 按下方「线上查询」流程。**查到的条目仍须标注「非本工程事实」**，能开 UE 后应用 **as-api-dynamic-query** 复核。
3. **写回并维护索引（可选）**  
   凡从线上新获得且希望离线可检索的类/枚举/重要 API，可写入 **`content/reference/AS_API/API_Docs/`** 并更新 **`content/reference/AS_API/API_Index.md`**。

## 本地查询要点

- **索引**：`content/reference/AS_API/API_Index.md` 列表项格式为 `- [DisplayName](API_Docs/FileName.md)`。
- **单类文档**：`content/reference/AS_API/API_Docs/<ClassName>.md`；全局函数多在 `System.md` 等。

## 线上查询（仅当本地无结果且需要补充时）

### 站点结构（Natural Docs）

- **左侧栏**：Files、Classes。
- **右上角**：Search。
- **锚点**：`https://angelscript.hazelight.se/api/#CClass:<ClassName>`。

### 线上推荐流程

1. `browser_navigate` 到 `https://angelscript.hazelight.se/api/`。
2. 用 Search 或 `browser_search` 查类名/函数名。
3. 进具体类或直链 `#CClass:<ClassName>`。
4. `browser_snapshot` 后配合 grep / `browser_click`。

## 写回本地与维护索引

凡从线上新查到且希望 Kit 离线可查的类/枚举（或对写脚本重要的 API），可写回并更新索引（格式与历史一致：新建或补充 `API_Docs/<ClassName>.md`，按字母序更新 `API_Index.md`）。**写回不改变「运行时以 UE 内查询为准」的约定。**

## 注意事项

- **`FInputActionValue` / Enhanced Input**：Hazelight 可能不全；以 **`AngelscriptEnhancedInput`** 插件与 **Script-Examples/EnhancedInputExamples** 为准，能开 UE 时用 **as-api-dynamic-query** 核对类型方法名。
- 查询结束后若曾 `browser_lock`，记得 `browser_unlock`。

## 常见 AS API 与站点对应

| 用户常查 | 站点侧栏/锚点 | 说明 |
|----------|----------------|------|
| LineTrace、射线检测 | EARLineTraceChannels, UKismetSystemLibrary | 实际以 UE 内 `list_symbols` + 编译为准 |
| System::* | UKismetSystemLibrary / System 命名空间 | 动态查询见 `System::` 前缀 |

## 输出建议

- 若使用了本技能：说明**因 ASApiQuery 不可用**才走离线链；若用户能开 UE，应提示改用 **as-api-dynamic-query**。
- 从线上写回时：说明已写入路径并提醒以 UE 内查询为准。

## 与 write-angelscript 的协作

- **write-angelscript**：写代码流程、Docs-UE-Angelscript、Script-Examples、约定；**查「有哪些 API」默认指向 as-api-dynamic-query**。
- **本技能**：**离线回退** + Hazelight 参考 + 可选写回 `API_Docs`；**不是**能开 UE 时的首选。
