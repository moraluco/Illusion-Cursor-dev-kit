# 自动化开发过程：踩坑记录工作流

目标：把“踩坑”从临时对话/滚屏，变成可复盘、可检索、可迭代的资产。

## 两层结构（快记录 → 稳沉淀）

- **Inbox（快）**：`content/dev/pitfalls-inbox.md`
  - 随手追加，优先记录证据与上下文
  - 不要求写成“结论”，允许猜测
- **Knowledge（稳）**：
  - 易错点与排错：`content/knowledge/05-gotchas.md`
  - 决策与约定：`content/knowledge/04-decisions.md`
  - 自动化 Playbook：`content/knowledge/13-ue-automation-test-playbook.md`

## 什么时候写（强制触发点）

- **每次失败闭环**：脚本/测试/UE 启动/桥接/导出只要失败过一次，就写一条（哪怕暂时没根因）。
- **每次“修了才好”**：修复后补上“如何验证/如何预防”。
- **每次“差点忘了”**：凡是需要“记住某个参数/路径/顺序/环境变量”的，都写。

## 怎么写（最小可用字段）

最少写三件事：

- **现象/错误**
- **发生位置 + 触发条件**
- **证据**（日志/exit code/关键文件路径）

其余字段（根因/方案/预防）可以后补。

## 一键追加（推荐）

用脚本往 inbox 追加一段模板，避免手工排版。

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File .\content\dev\scripts\Add-Pitfall.ps1 -Title "Start-UnrealEditor 超时" -Where "content/dev/scripts/Start-UnrealEditor.ps1" -Evidence "Saved/Logs/UnrealEditor.log"
```

## 何时沉淀到知识库

当满足任一条件就迁移：

- 这个坑未来**很可能再次出现**
- 已经有**稳定根因**或**稳定规避方案**
- 需要形成团队约定（例如路径、命名、并发策略、端口策略）

迁移完成后，inbox 条目里补上 **沉淀去向**，保留原始证据指针即可。

