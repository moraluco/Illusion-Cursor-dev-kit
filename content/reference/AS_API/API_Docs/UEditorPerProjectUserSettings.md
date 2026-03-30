# UEditorPerProjectUserSettings

**Visibility:** public

## Inheritance

UObject → UEditorPerProjectUserSettings → DEVELOPERTOOLS

## Description

bDisplayEngineVersionInBadge bool bDisplayEngineVersionInBadge

When enabled, Engine Version Number is displayed in the ProjectBadge

## SIMPLYGONSWARM

### SimplygonServerIP

```
FString SimplygonServerIP
```

Server IP for the distributed Simplygon server

### bEnableSwarmDebugging

```
bool bEnableSwarmDebugging
```

Enable swarm debugging features. Temp ssf files are not removed. Detailed message printing

### SimplygonSwarmDelay

```
uint SimplygonSwarmDelay
```

Time between JSON net requests for Simplygon Swarm

### bUseSimplygonSwarm

```
bool bUseSimplygonSwarm
```

When enabled, use SimplygonSwarm Module / server to create proxies

### SwarmNumOfConcurrentJobs

```
uint SwarmNumOfConcurrentJobs
```

Number of concurrent swarm jobs to execute. This is independent of the main job queue.

### SwarmMaxUploadChunkSizeInMB

```
uint SwarmMaxUploadChunkSizeInMB
```
### SwarmIntermediateFolder

```
FString SwarmIntermediateFolder
```

Folder in which Simplygon Swarm will store intermediate texture and mesh data that is uploaded to the Swarm

---

## UNREALAUTOMATIONTOOL

### bAlwaysBuildUAT

```
bool bAlwaysBuildUAT
```

Always build UAT\UBT before launching the game. It will decrease iteration times if disabled

### bGetAttentionOnUATCompletion

```
bool bGetAttentionOnUATCompletion
```

If enabled, the Editor will attempt to get the users attention whenever a UAT task (such as cooking or packaging) is completed

---

## FUNCTIONS

### SetbShowCompilerLogOnCompileError

```
void SetbShowCompilerLogOnCompileError(bool Value)
```

SetbDisplayDocumentationLink

### void SetbDisplayDocumentationLink

```
void SetbDisplayDocumentationLink(bool Value)
```

SetbAlwaysGatherBehaviorTreeDebuggerData

### void SetbAlwaysGatherBehaviorTreeDebuggerData

```
void SetbAlwaysGatherBehaviorTreeDebuggerData(bool Value)
```

SetbDisplayBlackboardKeysInAlphabeticalOrder

### void SetbDisplayBlackboardKeysInAlphabeticalOrder

```
void SetbDisplayBlackboardKeysInAlphabeticalOrder(bool Value)
```

SetbAutomaticallyHotReloadNewClasses

### void SetbAutomaticallyHotReloadNewClasses

```
void SetbAutomaticallyHotReloadNewClasses(bool Value)
```

SetbDisplayUIExtensionPoints

### void SetbDisplayUIExtensionPoints

```
void SetbDisplayUIExtensionPoints(bool Value)
```

SetbKeepFbxNamespace

### void SetbKeepFbxNamespace

```
void SetbKeepFbxNamespace(bool Value)
```

SetbShowImportDialogAtReimport

### void SetbShowImportDialogAtReimport

```
void SetbShowImportDialogAtReimport(bool Value)
```

SetbKeepAttachHierarchy

### void SetbKeepAttachHierarchy

```
void SetbKeepAttachHierarchy(bool Value)
```

SetbAnimationReimportWarnings

### void SetbAnimationReimportWarnings

```
void SetbAnimationReimportWarnings(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditorPerProjectUserSettings::StaticClass()
```
