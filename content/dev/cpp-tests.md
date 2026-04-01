# 纯 C++ 单测（不进 UE）

当你要验证**完全不依赖 UE** 的逻辑（工具函数、算法、序列化、可控 IO/网络协议层等），优先用本仓库的纯 C++ 单测层：在 Cursor 内即可构建与运行。

## 目录

- 工程：`content/dev/cpp-tests/`
- 入口脚本：`content/dev/scripts/Run-CppUnitTests.ps1`

## 运行

```powershell
# 直接跑纯 C++
powershell -NoProfile -ExecutionPolicy Bypass -File .\content\dev\scripts\Run-CppUnitTests.ps1

# 或用统一入口（会顺带跑 Pester Unit）
powershell -NoProfile -ExecutionPolicy Bypass -File .\content\dev\scripts\Run-LocalTests.ps1 -SkipLint
```

## 依赖

- 需要本机有 **CMake**（脚本会尝试从常见路径或 Visual Studio 安装中自动定位）。
- 需要可用的 C++ 编译器（Windows 通常为 Visual Studio Build Tools）。

