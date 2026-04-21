# AS_API（离线归档）

本目录为 **https://angelscript.hazelight.se/api/** 的**本地抓取/归档**，与 **Hazelight 侧工程**对应，**不是**你当前打开的工程（ManteumTower 等）在运行时**实际注册**的 AngelScript 绑定。

## Agent 必读（权威顺序）

1. **能启动 UE 并加载目标工程**：**必须先 Shell** 执行 Kit **`content/dev/scripts/Invoke-ASApiQuery.ps1`**（技能 **as-api-dynamic-query** / rule **as-api-dynamic-query-authority**），用 HTTP 查 `list_symbols` / `list_types`；**不要**第一步就 Read/grep 本目录 `API_Docs`。
2. **不能开 UE 或 ASApiQuery 持续不可用**：再用技能 **angelscript-api-query**，**本目录**仅作离线 grep/阅读材料。
3. **完整签名与参数**：以编译器、Script-Examples、插件绑定为准；动态查询多为符号名。

**禁止**：在默认假设「能开 UE」时，把本目录或 Hazelight 外站当作**本项目 API 的唯一事实来源**。
