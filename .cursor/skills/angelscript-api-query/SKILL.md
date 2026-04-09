---
name: angelscript-api-query
description: >-
  AS API：先 Kit AS_API，再 https://angelscript.hazelight.se/api/ 作外站参考；Hazelight 对应**另一套工程/分支**的绑定，与本项目**非一一对应**，写代码前必须在当前工程内核查（编译/插件/Script-Examples）。写回 API_Docs 与 API_Index。
---

# AngelScript API 查询

查找 UnrealEngine-AngelScript 的类、枚举、函数等 API。**优先查 Kit 本地**（`content/reference/AS_API/API_Docs/` + `content/reference/AS_API/API_Index.md`），本地没有时再查线上（https://angelscript.hazelight.se/api/），并把线上查到的内容**写回 Kit 本地**并维护索引，下次即可本地命中。

所有路径均相对于 **Kit 根目录**（含本技能与 `content/` 的仓库）。

## Hazelight 站点与「当前工程」的关系（必读）

- **https://angelscript.hazelight.se/api/** 文档的是 **Hazelight 侧 Unreal AngelScript 工程**里暴露的 API，与**本工作区项目**（引擎版本、启用插件、AngelScript 绑定、NotInAngelscript 裁剪等）**不是同一份代码**。
- **很多线上列出的类/方法在本项目里不存在、未绑定或签名不同**；反之本项目也可能有额外插件 mixin（如 **`AngelscriptEnhancedInput`**）而线上不全。
- **因此：Hazelight 仅作「AS 用法与命名」的参考线索，绝不是「在本项目必可用」的事实。**  
  从线上或 Kit 里抄签名后，**必须在当前工程内核查**：实际 **`.as` 编译**、项目 **`Script-Examples`**、相关 **C++ 绑定/插件**（如 `Engine/.../Plugins/Angelscript*`）、必要时技能 **as-api-dynamic-query**（编辑器会话内符号）。未核查前**禁止**向用户断言「照 Hazelight 一定可编译」。

写回 `API_Docs` 时，可在文档中注明来源为 Hazelight 摘录，并提醒「以本工程编译与绑定为准」。

## 查询顺序（必须遵守）

1. **优先本地**  
   按 **`content/reference/AS_API/API_Index.md`** 索引查：在索引中搜类名/符号，或对 **`content/reference/AS_API/API_Docs/`** 用 grep 搜关键词（如 `LineTrace`、`System::`、类名）。索引项格式为 `- [ClassName](API_Docs/ClassName.md)`，按字母序排列；根据链接打开对应 `content/reference/AS_API/API_Docs/<ClassName>.md` 查看详情。
2. **本地未命中再查线上（仅作参考）**  
   若在 API_Index 与 API_Docs 中均未找到，再用浏览器访问 https://angelscript.hazelight.se/api/ 按下方「线上查询」流程操作。**查到的条目仍须按上文「Hazelight 与当前工程」在项目中核验**，不可直接当生产代码依据。
3. **写回并维护索引**  
   凡从线上新获得的类/枚举/重要 API，须写入 **`content/reference/AS_API/API_Docs/`** 并更新 **`content/reference/AS_API/API_Index.md`**（见下方「写回本地与维护索引」），以便下次优先本地查到。

## 本地查询要点

- **索引**：`content/reference/AS_API/API_Index.md` 列表项格式为 `- [DisplayName](API_Docs/FileName.md)`，文件名一般为类名（如 `UKismetSystemLibrary` → `UKismetSystemLibrary.md`）。可用 grep 在索引或直接在 `content/reference/AS_API/API_Docs/*.md` 中搜类名、函数名、命名空间（如 `System::`）。
- **单类文档**：`content/reference/AS_API/API_Docs/<ClassName>.md` 内通常含 `# ClassName`、Inheritance、Description、FUNCTIONS/TYPES 等；Function Library 类（如 `System` 对应 `UKismetSystemLibrary`）在 `System.md` 等文件中。

## 线上查询（仅当本地无结果时）

### 站点结构（Natural Docs）

- **左侧栏**：Files、Classes；Classes 下为按字母序的类/枚举列表（数量多，约 8000+ 项）。
- **右上角**：Search 输入框，可输入关键词过滤/高亮。
- **右侧主区**：当前选中类/成员的文档（签名、参数、说明）。
- **锚点**：类页直链格式为 `https://angelscript.hazelight.se/api/#CClass:<ClassName>`，例如 `#CClass:UKismetSystemLibrary`、`#CClass:EARLineTraceChannels`。

### 线上推荐流程

1. **打开站点**  
   `browser_navigate` 到 `https://angelscript.hazelight.se/api/`。
2. **按关键词查**  
   用站点内 Search（`browser_fill`）或页面内搜索（`browser_search`）查类名/函数名（如 `linetrace`、`LineTrace`、`Kismet`）。
3. **进具体类**  
   在侧栏点击匹配链接，或直接 `browser_navigate` 到 `.../api/#CClass:<ClassName>`。
4. **从快照批量找**  
   `browser_snapshot` 后对快照文件 grep 关键词得到 `name:` 与 `ref:`，用 `browser_click` 的 ref 打开对应项。
5. **补全签名**  
   若线上只有类名而无方法列表，在 Kit 内 `content/reference/AS_API/API_Docs/` 搜索同名类或 `System::` 等；若仍无，将当前从线上看到的类/枚举/函数信息作为写回内容。

## 写回本地与维护索引

凡从线上新查到且 Kit 本地尚无的类/枚举（或对写脚本重要的 API），必须写回 Kit 并更新索引，这样下次会优先在本地命中。

1. **写入 `content/reference/AS_API/API_Docs/`**  
   - 在 **Kit 根目录下** 新建或覆盖 `content/reference/AS_API/API_Docs/<ClassName>.md`（文件名与类名一致，如 `EARLineTraceChannels.md`、`UKismetSystemLibrary.md`）。  
   - 内容至少包含：`# ClassName` 标题，以及从线上摘录的 Description、TYPES（枚举成员）、FUNCTIONS（签名与参数说明）等；格式可参考同目录下已有文档。

2. **更新 `content/reference/AS_API/API_Index.md`**  
   - 索引列表项每行格式：`- [ClassName](API_Docs/ClassName.md)`。  
   - 在**按字母序**正确位置插入新的一行（与现有 A/E/F/U/Gameplay 等前缀的排序一致）；若该类已存在则只更新对应 md 内容，不必重复添加索引项。  
   - 不要改动文件头部的标题与说明行。

3. **命名与归属**  
   - 若查到的是某类的静态方法（如 `UKismetSystemLibrary::LineTraceSingle`），且 Kit 里已有对应「命名空间」文档（如 `System.md`），则把新方法补充进该 md，不必单独新建类文档；若尚无该类文档，则新建 `content/reference/AS_API/API_Docs/<C++Class>.md` 并加入索引。

## 注意事项

- 侧栏列表很长，优先用 Search 或 `browser_search` 缩小范围，避免盲目滚动。
- 方法可能挂在「父类」下（如 LineTrace 相关在 `UKismetSystemLibrary`），若搜函数名无结果可改搜类名（如 Kismet、System）。
- 站点主要提供类/枚举入口；具体静态方法签名有时需结合 Kit 内 `content/reference/AS_API/API_Docs/System.md` 等查看。
- **`FInputActionValue` / Enhanced Input 扩展**：Hazelight 站点可能**不全**或与项目启用的 **`AngelscriptEnhancedInput`** 插件 mixin（如 `GetAxis2D()`）不一致。本地 AS_API 未命中时：**对照**引擎插件目录下 `AngelscriptEnhancedInput` 的绑定源码、`Engine/Engine/Script-Examples/EnhancedInputExamples/`，并查技能 **write-angelscript** § Enhanced Input；仍缺再线上补充写回。
- 查询结束后若曾 `browser_lock`，记得 `browser_unlock`。

## 常见 AS API 与站点对应

| 用户常查 | 站点侧栏/锚点 | 说明 |
|----------|----------------|------|
| LineTrace、射线检测 | EARLineTraceChannels, UKismetSystemLibrary | 通道枚举；实际函数多在 UKismetSystemLibrary，本地 System.md 更全 |
| System::* | UKismetSystemLibrary | 静态函数如 LineTraceSingle、Print 等 |
| FVector、FHitResult | 搜 FVector、FHitResult | 结构体/类 |
| ETraceTypeQuery、EDrawDebugTrace | 搜同名 | 枚举 |

## 输出建议

- 找到的 API：给出**类名/枚举名 + 函数/成员名**，以及签名或文档摘要。  
- 若从线上新查到并已写回：说明已写入 `content/reference/AS_API/API_Docs/<ClassName>.md` 并已更新 `content/reference/AS_API/API_Index.md`，下次可优先本地查到。  
- 若在线只有类名而无方法列表：注明「详见 Kit `content/reference/AS_API/API_Docs/<ClassOrModule>.md`」，并可从该文件摘录关键签名。

## 与 write-angelscript 的协作

- **write-angelscript** 负责：写代码前的本地 reference 查阅（AS_API、Docs-UE-Angelscript）、书写约定、写法速查、常见坑、输出要求。  
- **本技能** 负责：按「先本地（Kit 的 AS_API）后线上（Hazelight **参考**）」查 API；若从线上查到则写回 `content/reference/AS_API/API_Docs/` 并维护 `API_Index.md`。  
- 写 AS 时若提示「使用技能 angelscript-api-query」或「查 API」，即执行本技能（先查本地，未命中再查线上并写回），把结果用于后续编写；**落地代码前仍以当前工程可编译、与插件绑定一致为准**。
