# ue-dev-kit（UE 研发·知识库 Kit）

将「设计-测试-验证-迭代、迭代计划、知识库与设计/开发文档、与 AI 协作约定」的研发方法论复用到 UE 等研发项目。**文档与知识库全部放在 Kit 的 content/**；项目路径只保留实际功能代码与资源。通过 **Cursor 多根工作区** 把本 Kit 作为额外根加入，项目 rule 按本 Kit 的 METHODOLOGY 工作。

## 项目概览（本仓库当前内容）

本仓库已内置一套 **ManteumTower（UE + AngelScript）** 项目实践的 `content/`（知识库、开发文档、参考资料、自动化脚本）。常用入口：

- **迭代计划**：`content/plan.md`
- **知识库索引（含 Rule/Skill 对照表）**：`content/knowledge/README.md`
- **开发文档索引（含脚本入口）**：`content/dev/README.md`
- **参考资料（AS API / Docs-UE-Angelscript）**：`content/reference/README.md`

> 复用到新项目时，可保留本仓库的核心层（`METHODOLOGY.md`、`.cursor/`、`templates/`），并按需清理/替换 `content/`。

## 用法

1. **把本 Kit 加为工作区根**  
   - 打开项目（File → Open Folder）。  
   - **File → Add Folder to Workspace…**，选择本 Kit 所在目录（ue-dev-kit 根目录）。  
   - 保存工作区（可选）：File → Save Workspace As…。

2. **效果**  
   - Kit 内规则（`.cursor/rules/ue-dev-kit.mdc`）生效。  
   - 文档与知识库均在 **Kit 的 content/**；AI 按 METHODOLOGY 读写 content/，代码与资源在项目根。

## 初始化（无脚本，由 Agent 完成）

初始化只做一次。**无 init 脚本**；由用户要求**项目 Agent** 按 METHODOLOGY 中的「初始化步骤」执行：

1. **在项目根添加 rule**  
   在项目的 `.cursor/rules/` 下新增 `use-ue-dev-kit.mdc`，注明本项目使用本 Kit、文档在 Kit 的 content/、按 METHODOLOGY 工作。

2. **由 Agent 在 Kit 内生成 content/**  
   Agent 根据项目在 Kit 根下生成 **content/**（如 plan.md、design/、dev/、knowledge/、reference/ 等），**结构按项目需要决定**，可参考本 Kit 的 templates/。

## 项目与 Kit

- **Kit 只服务一个项目**。工作区 = Kit 根 + 项目根。
- **项目根**：仅放实际功能（代码、资源）；不包含文档。
- **Kit 根**：含 METHODOLOGY、规则与 templates；该项目的文档与知识库在 Kit 的 **content/**。

## 核心与内容层分离

- **Kit 为独立 Git 仓库**。本地开发可选用 Git **跟踪整库**（含 `content/`、`.cursor/` 等），便于 TDD 与 Cursor 自动化；与团队 **Perforce** 的阶段性同步由项目侧完成。路径与惯例见 **技能 `git-local-p4-workflow`**、规则 **`git-local-repos-and-p4`**。
- **核心泛化层**：METHODOLOGY.md、`.cursor/rules/`、`templates/`。
- **具体内容层**（项目专属）：`content/`，由 Agent 按项目生成与维护；与核心模板迭代互不干扰。

## 自动化工作流入口（速查）

- **能不进 UE 就不进 UE（本地门禁）**：`content/dev/scripts/Run-LocalTests.ps1`（见 `content/knowledge/13-ue-automation-test-playbook.md`）
- **无人值守（CI/夜间）**：`content/dev/unattended-ue-automation.md`（`UnrealEditor-Cmd` + `Saved/Logs` + `-stdout`）
- **交互式 Editor + Bridge（在线权威读蓝图/关卡）**：`content/dev/soft-ue-cli.md` + `content/knowledge/07-blueprint-query-workflow.md`
- **蓝图离线检索/取证（Search/Grep）**：`.soft-ue-index/` 与相关脚本入口见 `content/dev/README.md`
- **AngelScript 编写与测试**：`.cursor/skills/write-angelscript/SKILL.md`、`.cursor/skills/angelscript-tdd-agent-iteration/SKILL.md`（并参考 `content/knowledge/03-angelscript-ue.md`）
- **复盘并沉淀工作流**：`content/knowledge/15-retro-automation-workflow.md`（配套技能 `retro-automation-workflow`）

## 目录结构

```
ue-dev-kit/
├── README.md
├── METHODOLOGY.md            # 含文档结构、初始化步骤、AI 协作约定
├── .cursor/rules/
│   └── ue-dev-kit.mdc
├── templates/                # 可选参考，Agent 生成 content 时可参考
│   ├── plan.md
│   ├── design/, dev/, knowledge/, reference/
└── content/                  # 项目内容层：知识库/文档/参考/脚本（本仓库当前已内置一套）
    ├── plan.md, design/, dev/, knowledge/, reference/
```

## 适用场景

UE 游戏开发等研发项目：在 Cursor 中读写迭代计划、设计文档、开发文档与知识库（均在 Kit 的 content/），既作 AI 上下文，也可按项目自选方式（如飞书开放平台 API）同步到飞书。
