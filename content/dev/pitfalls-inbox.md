# Pitfalls Inbox（随手记录区）

用于在“自动化开发/调试进行中”快速记录踩坑，避免只存在于聊天/终端滚屏里。

- 这里允许不完整：先把**现象、上下文、证据**记下来即可。
- 后续稳定后再“沉淀”到知识库：
  - 易错点/排错 → `content/knowledge/05-gotchas.md`
  - 约定/取舍/边界 → `content/knowledge/04-decisions.md`
  - 可复用流程 / 复盘套路 → `content/knowledge/13-ue-automation-test-playbook.md`、`content/knowledge/15-retro-automation-workflow.md` 或对应 dev 文档
  - Git 原子提交与拆分大提交 → `content/dev/git-automation.md`
- **已晋升条目**：若某条已从 inbox 写入 gotchas/playbook/retro，可在该条 **沉淀去向** 填 `Promote to: 05-gotchas / 15-retro / git-automation` 并保留一行链接，避免重复劳动。

---

## 记录模板（复制一段即可）

### YYYY-MM-DD <一句话标题>

- **现象/错误**:
- **发生位置**: （脚本/命令/模块/CI step）
- **触发条件**:
- **复现步骤**:
- **证据**: （关键日志片段、exit code、截图路径、相关文件）
- **根因猜测**:
- **解决方案**:
- **如何验证**:
- **如何预防**: （加断言/前置自检/更好的错误信息/文档补充/测试用例）
- **沉淀去向**: （准备补到哪个 knowledge/dev 文件）

---

## 条目

（从这里开始追加）


### 2026-03-30 示例：脚本超时

- **现象/错误**:
- **发生位置**: content/dev/scripts/Start-UnrealEditor.ps1
- **触发条件**:
- **复现步骤**:
- **证据**: Saved/Logs/UnrealEditor.log
- **根因猜测**:
- **解决方案**:
- **如何验证**:
- **如何预防**:
- **沉淀去向**:

> created 2026-03-30 21:34:27 by Add-Pitfall.ps1


### 2026-03-30 Encoding check

- **Symptom / Error**:
- **Where**: content/dev/scripts/Add-Pitfall.ps1
- **Trigger**:
- **Repro**:
- **Evidence**: content/dev/pitfalls-inbox.md
- **Hypothesis**:
- **Fix**:
- **How to verify**:
- **Prevention**:
- **Promote to**: (knowledge/dev file)

> created 2026-03-30 21:34:52 by Add-Pitfall.ps1

