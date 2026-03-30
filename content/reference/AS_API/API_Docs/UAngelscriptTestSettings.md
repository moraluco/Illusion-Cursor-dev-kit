# UAngelscriptTestSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UAngelscriptTestSettings → CODECOVERAGE → CoverageExcludePatterns

## Description

TArray<FString> CoverageExcludePatterns

Don't measure coverage in paths that match these wildcards.

Paths start at the Angelscript root (by convention this dir is named Script/). If you want to exclude a directory from which modules are imported as Network.MyFile, you want to add Network/_* to this list (NOTE: remove the _, it's there to avoid -Wcomment in clang).  If you just want to exclude MyFile.as, add Network/MyFile.as. If you have the convention that unit tests be in files named _Test.as, add the pattern *_Test.as, and so on.

bEnableCodeCoverage bool bEnableCodeCoverage

Turn on code coverage measurements. Reports are written to Saved/CodeCoverage/.  Needs a restart to take effect.

## DEBUGGING

### bEnableDebugBreaksInTests

```
bool bEnableDebugBreaksInTests
```

Debug-break on ensures in tests. This is generally off in tests because ensures are intentionally triggered by tests all the time, which is really annoying.

---

## INTEGRATIONTESTS

### IntegrationTestNamingConvention

```
FString IntegrationTestNamingConvention
```

Module paths containing IntegrationTests must match the following wildcard pattern

### UnitTestNamingConvention

```
FString UnitTestNamingConvention
```

Module paths containing UnitTests must match the following wildcard pattern

### IntegrationTestMapRoot

```
FString IntegrationTestMapRoot
```

Where integration test maps are stored.

---

## TESTS

### bEnableNetworkEmulation

```
bool bEnableNetworkEmulation
```

Whether tests that use client/server should apply any network emulation.

### InPacketsMaxLatency

```
int InPacketsMaxLatency
```

The maximum latency of incoming packets.

### OutPacketsMaxLatency

```
int OutPacketsMaxLatency
```

The maximum latency of outgoing packets.

### OutPacketsMinLatency

```
int OutPacketsMinLatency
```

The minimum latency of outgoing packets.

### InPacketsMinLatency

```
int InPacketsMinLatency
```

The minimum latency of incoming packets.

### InPacketsPacketLossPercentage

```
int InPacketsPacketLossPercentage
```

The packet loss percentage of incoming packets.

### OutPacketsPacketLossPercentage

```
int OutPacketsPacketLossPercentage
```

The packet loss percentage of outgoing packets.

---

## UNITTESTS

### LimitNModulesToTestOnHotReload

```
int LimitNModulesToTestOnHotReload
```

When hot reloading, all tests depending on the newly recompiled files will be executed.  Use this setting to limit the number of modules to be tested upon hot reload.  Set to 0 to disable limit.

### UnitTestGameInstanceClass

```
TSoftClassPtr<UGameInstance> UnitTestGameInstanceClass
```

The game instance class to use for unit tests.

### GarbageCollectEveryNTests

```
int GarbageCollectEveryNTests
```

Force garbage collection every N tests.  This will also perform test execution in batches when hot reloading.  All the tests of an AS module are added or not, so the number of test in a batch can be greater that this. Understand this setting as a minimum number of tests per batch but don't continue adding modules once this number has been reached.  This allows the editor to refresh between batches and prevents a lock because of PhysX issues.  Set to 0 to disable.

### bRunUnitTestsOnHotReload

```
bool bRunUnitTestsOnHotReload
```

Whether tests on hot reload is enabled.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAngelscriptTestSettings::StaticClass()
```
