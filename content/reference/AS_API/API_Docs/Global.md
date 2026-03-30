# Global

## Inheritance

Global

## Description

STATIC VARIABLES NAN_flt static const float32 NAN_flt MIN_uint16 static const uint16 MIN_uint16 MIN_uint32 static const uint MIN_uint32 MIN_uint64 static const uint64 MIN_uint64 MIN_int8 static const int8 MIN_int8 MIN_int16 static const int16 MIN_int16 MIN_int32 static const int MIN_int32 MIN_int64 static const int64 MIN_int64 MAX_uint8 static const uint8 MAX_uint8 MAX_uint16 static const uint16 MAX_uint16 MAX_uint32 static const uint MAX_uint32 MAX_uint64 static const uint64 MAX_uint64 MAX_int8 static const int8 MAX_int8 MAX_int16 static const int16 MAX_int16 MAX_int32 static const int MAX_int32 MAX_int64 static const int64 MAX_int64 MIN_flt static const float32 MIN_flt MAX_flt static const float32 MAX_flt MIN_dbl static const float MIN_dbl MAX_dbl static const float MAX_dbl MIN_uint8 static const uint8 MIN_uint8 NAN_dbl static const float NAN_dbl

## EULERS_NUMBER

### EULERS_NUMBER

```
static const float EULERS_NUMBER
```

---

## PI

### PI

```
static const float PI
```

---

## HALF_PI

### HALF_PI

```
static const float HALF_PI
```

---

## TWO_PI

### TWO_PI

```
static const float TWO_PI
```

---

## TAU

### TAU

```
static const float TAU
```

---

## SMALL_NUMBER

### SMALL_NUMBER

```
static const float SMALL_NUMBER
```

---

## KINDA_SMALL_NUMBER

### KINDA_SMALL_NUMBER

```
static const float KINDA_SMALL_NUMBER
```

---

## BIG_NUMBER

### BIG_NUMBER

```
static const float BIG_NUMBER
```

---

## THRESH_VECTOR_NORMALIZED

### THRESH_VECTOR_NORMALIZED

```
static const float THRESH_VECTOR_NORMALIZED
```

---

## THRESH_NORMALS_ARE_PARALLEL

### THRESH_NORMALS_ARE_PARALLEL

```
static const float THRESH_NORMALS_ARE_PARALLEL
```

---

## THRESH_NORMALS_ARE_ORTHOGONAL

### THRESH_NORMALS_ARE_ORTHOGONAL

```
static const float THRESH_NORMALS_ARE_ORTHOGONAL
```

NAME_None static const FName NAME_None __WorldContext

### __WorldContext

```
static UObject __WorldContext
```

GFrameNumber static uint GFrameNumber AngelscriptCallstack static const TArray<FString> Global::AngelscriptCallstack TransientPackage static const UPackage Global::TransientPackage AngelscriptPackage static const UPackage Global::AngelscriptPackage CurrentWorld static const UWorld Global::CurrentWorld

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Print static void Print(FString Text, float32 Duration = 5.f, FLinearColor Color = FLinearColor :: LucBlue)
```

ensure

### static bool ensure

```
static bool ensure(bool Condition)
```

ensure

### static bool ensure

```
static bool ensure(bool Condition, FString Message)
```

ensureAlways

### static bool ensureAlways

```
static bool ensureAlways(bool Condition)
```

ensureAlways

### static bool ensureAlways

```
static bool ensureAlways(bool Condition, FString Message)
```

check

### static void check

```
static void check(bool Condition)
```

check

### static void check

```
static void check(bool Condition, FString Message)
```

throw

### static void throw

```
static void throw(FString Message)
```

GetAngelscriptCallstack

### static TArray<FString> GetAngelscriptCallstack

```
static TArray<FString> GetAngelscriptCallstack()
```

FormatAngelscriptCallstack

### static FString FormatAngelscriptCallstack

```
static FString FormatAngelscriptCallstack()
```

Log

### static void Log

```
static void Log(FString Text)
```

LogInfo

### static void LogInfo

```
static void LogInfo(FString Text)
```

LogDisplay

### static void LogDisplay

```
static void LogDisplay(FString Text)
```

Error

### static void Error

```
static void Error(FString Text)
```

Warning

### static void Warning

```
static void Warning(FString Text)
```

LogIf

### static void LogIf

```
static void LogIf(bool Condition, FString Text)
```

LogInfoIf

### static void LogInfoIf

```
static void LogInfoIf(bool Condition, FString Text)
```

LogDisplayIf

### static void LogDisplayIf

```
static void LogDisplayIf(bool Condition, FString Text)
```

ErrorIf

### static void ErrorIf

```
static void ErrorIf(bool Condition, FString Text)
```

WarningIf

### static void WarningIf

```
static void WarningIf(bool Condition, FString Text)
```

Log

### static void Log

```
static void Log(FName CategoryName, FString Text)
```

LogInfo

### static void LogInfo

```
static void LogInfo(FName CategoryName, FString Text)
```

LogDisplay

### static void LogDisplay

```
static void LogDisplay(FName CategoryName, FString Text)
```

Error

### static void Error

```
static void Error(FName CategoryName, FString Text)
```

Warning

### static void Warning

```
static void Warning(FName CategoryName, FString Text)
```

Throw

### static void Throw

```
static void Throw(FString Text)
```

ThrowIf

### static void ThrowIf

```
static void ThrowIf(bool Condition, FString Text)
```

DebugBreak

### static void DebugBreak

```
static void DebugBreak()
```

PrintFromObject

### static void PrintFromObject

```
static void PrintFromObject(UObject WorldContextObject, FString Text, float32 Duration = 0.f, FLinearColor Color = FLinearColor :: LucBlue)
```

PrintToScreen

### static void PrintToScreen

```
static void PrintToScreen(FString Text, float32 Duration = 0.f, FLinearColor Color = FLinearColor :: LucBlue)
```

PrintWarning

### static void PrintWarning

```
static void PrintWarning(FString Text, float32 Duration = 8.f, FLinearColor Color = FLinearColor :: Yellow)
```

PrintError

### static void PrintError

```
static void PrintError(FString Text, float32 Duration = 8.f, FLinearColor Color = FLinearColor :: Red)
```

GetTransientPackage

### static UPackage GetTransientPackage

```
static UPackage GetTransientPackage()
```

GetAngelscriptPackage

### static UPackage GetAngelscriptPackage

```
static UPackage GetAngelscriptPackage()
```

NewObject

### static UObject NewObject

```
static UObject NewObject(UObject Outer, UClass Class, FName Name = NAME_None, bool bTransient = false)
```

LoadObject

### static UObject LoadObject

```
static UObject LoadObject(UObject Outer, FString Name)
```

FindObject

### static UObject FindObject

```
static UObject FindObject(FString Name)
```

FindObject

### static UObject FindObject

```
static UObject FindObject(UObject Outer, FString Name)
```

IsValid

### static bool IsValid

```
static bool IsValid(const UObject Object)
```

Returns true if the object is usable: non-null and not pending kill

---

## LOCTABLE_NEW

### static void LOCTABLE_NEW

```
static void LOCTABLE_NEW(const FName TableId, FString Namespace)
```

---

## LOCTABLE_FROMFILE_ENGINE

### static void LOCTABLE_FROMFILE_ENGINE

```
static void LOCTABLE_FROMFILE_ENGINE(const FName TableId, FString Namespace, FString FilePath)
```

---

## LOCTABLE_FROMFILE_GAME

### static void LOCTABLE_FROMFILE_GAME

```
static void LOCTABLE_FROMFILE_GAME(const FName TableId, FString Namespace, FString FilePath)
```

---

## LOCTABLE_SETSTRING

### static void LOCTABLE_SETSTRING

```
static void LOCTABLE_SETSTRING(const FName TableId, FString Key, FString SourceString)
```

---

## LOCTABLE_SETMETA

### static void LOCTABLE_SETMETA

```
static void LOCTABLE_SETMETA(const FName TableId, FString Key, const FName MetaDataId, FString MetaData)
```

---

## LOCTABLE

### static FText LOCTABLE

```
static FText LOCTABLE(const FName TableId, FString Key)
```

---

## NSLOCTEXT

### static FText NSLOCTEXT

```
static FText NSLOCTEXT(FString Namespace, FString Key, FString Text)
```

Function for using localization texts in Angelscript. Emulates NSLOCTEXT macro.  Only string literals can be used as input arguments from Angelscript.  Using variables (like FString) will run but will cause errors when strings are gathered for localization.

### GetCurrentWorld

```
static UWorld GetCurrentWorld()
```

GetAllActorsOfClass

### static void GetAllActorsOfClass

```
static void GetAllActorsOfClass(?& OutActors)
```

GetAllActorsOfClass

### static void GetAllActorsOfClass

```
static void GetAllActorsOfClass(UClass Class, ?& OutActors)
```

GetAllActorsOfClassWithTag

### static void GetAllActorsOfClassWithTag

```
static void GetAllActorsOfClassWithTag(FName TagName, ?& OutActors)
```

SpawnActor

### static AActor SpawnActor

```
static AActor SpawnActor(UClass Class, FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, bool bDeferredSpawn = false, ULevel Level = nullptr)
```

FinishSpawningActor

### static void FinishSpawningActor

```
static void FinishSpawningActor(AActor Actor)
```

FinishSpawningActor

### static void FinishSpawningActor

```
static void FinishSpawningActor(AActor Actor, FTransform SpawnTransform)
```

SpawnPersistentActor

### static AActor SpawnPersistentActor

```
static AActor SpawnPersistentActor(UClass Class, FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, bool bDeferredSpawn = false)
```
