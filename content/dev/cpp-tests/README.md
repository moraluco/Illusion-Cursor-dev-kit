# 纯 C++ 单测（不进 UE）

本目录提供一个**完全不依赖 UE** 的最小 C++ 测试工程，用于在 Cursor 内快速验证纯逻辑代码。

默认测试框架：**doctest（单头文件）**。

## 本机运行

推荐走 Kit 脚本入口：

- `content/dev/scripts/Run-CppUnitTests.ps1`

或手动：

```powershell
cmake -S . -B build
cmake --build build -j
ctest --test-dir build --output-on-failure
```

