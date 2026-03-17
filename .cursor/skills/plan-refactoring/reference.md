# 制定重构计划 · 参考：Blueprint→AS 专项路径

当重构类型为 **蓝图转向 AngelScript（Blueprint→AS）** 时，在「评估项目状态」与「制定计划」阶段可参考本说明；完整流程仍以 SKILL.md 为准。

---

## 阶段 0：准备（不写代码）

| 步骤 | 说明 |
|------|------|
| **快照索引** | 用 `BlueprintSnapshot/_index.json` 与 `blueprints[].summary` 列出所有蓝图，按 `parentClass`、`nodeCount`、`functionCount` 排优先级（简单/纯数据先移，复杂后移）。 |
| **依赖图** | 从快照的 `dependencyClosure`、`eventNodes`、`structuredGraphs` 理清蓝图之间、蓝图与 C++ 的调用关系，标出「被多处引用」的核心蓝图。 |
| **接口清单** | 列出蓝图必须暴露给编辑器/其他系统的接口（事件、变量、函数）；在 AS 中对应为 `UFUNCTION(BlueprintCallable/BlueprintPure)` 等。 |

产出：**迁移顺序**（先移谁后移谁）、**接口清单**（AS 需实现的签名与事件）。

---

## 按「子系统」分块

以**子系统**为单位迁移，而不是按单个蓝图逐个搬：

- **武器**：WeaponBase / WeaponComponent / 具体武器子类（如左轮）→ 对应 BP_Weapon_*。
- **角色**：Player/Enemy Character + StatComponent → 对应 BP_Character_*。
- **动画**：AnimInstance（如 RevolverPistolAnimInstance）→ 对应 AnimBP。
- **输入 / QTE / 交互 / 巡逻**：按依赖顺序，逐个把 BP 侧调用改为 AS。

每个子系统内：**读快照 → 在 AS 实现/对齐行为 → 切换引用（编辑器改为使用 AS 类）→ 验证 → 收尾（废弃或保留空壳 BP）**。

---

## 单子系统执行节奏

对选定的一个子系统（例如武器）：

1. **读快照**：按 `content/knowledge/07-blueprint-snapshot-for-agent.md`（或项目内等价文档）：`_agentSummary` → `eventNodes` / `structuredGraphs` → `flows.execution` / `data`，整理出事件流与数据流。
2. **在 AS 实现/对齐**：在现有 AS 类（如 `WeaponBase.as`、`WeaponComponent.as`）上补全或调整，使行为与蓝图一致；新接口用 `UFUNCTION(BlueprintCallable/BlueprintPure)` 等按需暴露。
3. **切换引用**：在编辑器中把使用该子系统的地方从「用 BP_XXX」改为「用 AS 生成的类」；一次改一个引用点并验证。
4. **验证**：功能测试；若有 AS 单测，跑 **angelscript-tdd-agent-iteration**。
5. **收尾**：当某 BP 完全被 AS 替代且无引用后，标记废弃或删除；若需保留资产（Mesh、Montage 等），可保留「空壳」蓝图，逻辑全在 AS。

---

## 建议优先级（示例）

| 优先级 | 子系统 | 说明 |
|--------|--------|------|
| 高 | 武器（Weapon + Ballistic + 具体武器） | 与角色强相关，先收口。 |
| 高 | 角色（Player/Enemy + StatComponent） | 紧接武器。 |
| 中 | 动画（AnimInstance） | 已有 AS AnimInstance 时，将对应 AnimBP 逻辑收敛到 AS。 |
| 中 | 输入、QTE、交互 | 按依赖顺序逐个迁移。 |
| 低 | 巡逻、工具类 | 最后统一清理。 |

---

## 与 Kit 规则/技能的配合

- **快照只读**：改行为只在 AS 或编辑器中改 .uasset，不通过改快照 JSON（rule blueprint-snapshot-cognition）。
- **AS 优先**：新逻辑一律在 AS；仅当 AS 无法满足时用 C++ 扩展，再由 AS 调用（rule angelscript-primary-cpp-fallback）。
- **写 AS**：按技能 **write-angelscript**；需 API/签名时用 **angelscript-api-query**。
- **测试与沉淀**：跑测试用 **angelscript-tdd-agent-iteration**；迁移阶段结束后用 **summarize-as-experience** / **summarize-to-knowledge** 把 BP→AS 的坑与约定写入知识库。
