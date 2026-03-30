# AFunctionalTest

**Visibility:** public

## Inheritance

AActor → AFunctionalTest → AFunctionalAITestBase → AScreenshotFunctionalTestBase

## Description

FUNCTIONAL TESTING RandomNumbersStream FRandomStream RandomNumbersStream

A random number stream that you can use during testing.  This number stream will be consistent every time the test is run.

LogErrorHandling EFunctionalTestLogHandling LogErrorHandling

Determines how LogErrors are handled during this test.

LogWarningHandling EFunctionalTestLogHandling LogWarningHandling

Determines how LogWarnings are handled during this test.

Author FString Author

The author is the group or person responsible for the test.  Generally you should use a group name like 'Editor Team' or 'Rendering Team'.  When a test fails it may not be obvious who should investigate so this provides a associate responsible groups with tests.

Description FString Description

A description of the test, like what is this test trying to determine.

ObservationPoint AActor ObservationPoint

Allows you to specify another actor to view the test from.  Usually this is a camera you place in the map to observe the test.  Not useful when running on a build farm, but provides a handy way to observe the test from a different location than you place the functional test actor.

TotalTime float32 TotalTime Result EFunctionalTestResult Result TestLabel FString TestLabel bIsEnabled bool bIsEnabled

Allows a test to be disabled.  If a test is disabled, it will not appear in the set of runnable tests (after saving the map).

CurrentRerunReason const FName CurrentRerunReason

Returns the current re-run reason if we're in a named re-run.

## TIMEOUT

### TimesUpResult

```
EFunctionalTestResult TimesUpResult
```

If test is limited by time this is the result that will be returned when time runs out

### PreparationTimeLimit

```
float32 PreparationTimeLimit
```

The Test's time limit for preparation, this is the time it has to return true when checking IsReady(). '0' means no limit.

### TimesUpMessage

```
FText TimesUpMessage
```

TimeLimit const float32 TimeLimit

Test's time limit. '0' means no limit

---

## VARIABLES

### OnTestPrepare

```
FFunctionalTestEventSignature OnTestPrepare
```

Called when the test is ready to prepare

### OnTestStart

```
FFunctionalTestEventSignature OnTestStart
```

Called when the test is started

### OnTestFinished

```
FFunctionalTestEventSignature OnTestFinished
```

Called when the test is finished. Use it to clean up

---

## ASSERTS

### AssertValue_DateTime

```
bool AssertValue_DateTime(FDateTime Actual, EComparisonMethod ShouldBe, FDateTime Expected, FString What, const UObject ContextObject = nullptr)
```

Assert on a relationship between two DateTimes.

**Parameters**

What
FString

A name to use in the message if the assert fails (What: expected {Actual} to be <ShouldBe> {Expected} for context '')

AssertValue_Double
bool AssertValue_Double(
	float 	Actual,
	EComparisonMethod 	ShouldBe,
	float 	Expected,
	FString 	What,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert on a relationship between two doubles.

**Parameters**

What
FString

A name to use in the message if the assert fails (What: expected {Actual} to be <ShouldBe> {Expected} for context '')

AssertEqual_Transform
bool AssertEqual_Transform(
	FTransform 	Actual,
	FTransform 	Expected,
	FString 	What,
	float32 	Tolerance	 = 	0.000100,
const 	UObject 	ContextObject	 = 	nullptr
	)
Assert that two transforms are (components memberwise

translation, rotation, scale) equal within a small tolerance.

**Parameters**

What
FString

A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")

AssertEqual_Bool
bool AssertEqual_Bool(
	bool 	Actual,
	bool 	Expected,
	FString 	What,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that two bools are equal

**Parameters**

What
FString

A name to use in the message if the assert fails (What: expected {Actual} to be Equal To {Expected} for context '')

AssertEqual_Double
bool AssertEqual_Double(
	float 	Actual,
	float 	Expected,
	FString 	What,
	float 	Tolerance	 = 	0.000100,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that two double are equal within tolerance between two doubles.

**Parameters**

What
FString

A name to use in the message if the assert fails (What: expected {Actual} to be Equal To {Expected} within Tolerance for context '')

AssertEqual_Float
bool AssertEqual_Float(
	float32 	Actual,
	float32 	Expected,
	FString 	What,
	float32 	Tolerance	 = 	0.000100,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that two floats are equal within tolerance between two floats.

**Parameters**

What
FString

A name to use in the message if the assert fails (What: expected {Actual} to be Equal To {Expected} within Tolerance for context '')

AssertEqual_Int
bool AssertEqual_Int(
	int 	Actual,
	int 	Expected,
	FString 	What,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that two ints are equal

**Parameters**

What
FString

A name to use in the message if the assert fails (What: expected {Actual} to be Equal To {Expected} for context '')

AssertEqual_Name
bool AssertEqual_Name(
const 	FName 	Actual,
const 	FName 	Expected,
	FString 	What,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that two FNames are equal

**Parameters**

What
FString

A name to use in the message if the assert fails (What: expected {Actual} to be Equal To {Expected} for context '')

AssertEqual_Object
bool AssertEqual_Object(
	UObject 	Actual,
	UObject 	Expected,
	FString 	What,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that two Objects are equal

**Parameters**

What
FString

A name to use in the message if the assert fails (What: expected {Actual} to be Equal To {Expected} for context '')

AssertEqual_Rotator
bool AssertEqual_Rotator(
const 	FRotator 	Actual,
const 	FRotator 	Expected,
	FString 	What,
	float32 	Tolerance	 = 	0.000100,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that the component angles of two rotators are all equal within a small tolerance.

**Parameters**

What
FString

A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")

AssertEqual_String
bool AssertEqual_String(
const 	FString 	Actual,
const 	FString 	Expected,
	FString 	What,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that two Strings are equal.

**Parameters**

What
FString

A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")

AssertEqual_TraceQueryResults
bool AssertEqual_TraceQueryResults(
const 	UTraceQueryTestResults 	Actual,
const 	UTraceQueryTestResults 	Expected,
	FString 	What,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that two TraceQueryResults are equal.

**Parameters**

What
FString

A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")

AssertValue_Float
bool AssertValue_Float(
	float32 	Actual,
	EComparisonMethod 	ShouldBe,
	float32 	Expected,
	FString 	What,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert on a relationship between two floats.

**Parameters**

What
FString

A name to use in the message if the assert fails (What: expected {Actual} to be <ShouldBe> {Expected} for context '')

AssertEqual_Vector
bool AssertEqual_Vector(
const 	FVector 	Actual,
const 	FVector 	Expected,
	FString 	What,
	float32 	Tolerance	 = 	0.000100,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that two vectors are (memberwise) equal within a small tolerance.

**Parameters**

What
FString

A name to use in the message if the assert fails ("Expected 'What' to be {Expected} but it was {Actual} for context ''")

AssertFalse
bool AssertFalse(
	bool 	Condition,
	FString 	Message,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that a boolean value is false.

**Parameters**

Message
FString

The message to display if the assert fails ("Assertion Failed: 'Message' for context ''")

AssertIsValid
bool AssertIsValid(
	UObject 	Object,
	FString 	Message,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that a UObject is valid

**Parameters**

Message
FString

The message to display if the object is invalid ("Invalid object: 'Message' for context ''")

AssertNotEqual_Rotator
bool AssertNotEqual_Rotator(
const 	FRotator 	Actual,
const 	FRotator 	NotExpected,
	FString 	What,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that the component angles of two rotators are all not equal within a small tolerance.

**Parameters**

What
FString

A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")

AssertNotEqual_String
bool AssertNotEqual_String(
const 	FString 	Actual,
const 	FString 	NotExpected,
	FString 	What,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that two Strings are not equal.

**Parameters**

What
FString

A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")

AssertNotEqual_Transform
bool AssertNotEqual_Transform(
	FTransform 	Actual,
	FTransform 	NotExpected,
	FString 	What,
const 	UObject 	ContextObject	 = 	nullptr
	)
Assert that two transforms are (components memberwise

translation, rotation, scale) not equal within a small tolerance.

**Parameters**

What
FString

A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")

AssertNotEqual_Vector
bool AssertNotEqual_Vector(
const 	FVector 	Actual,
const 	FVector 	NotExpected,
	FString 	What,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that two vectors are (memberwise) not equal within a small tolerance.

**Parameters**

What
FString

A name to use in the message if the assert fails ("Expected 'What' not to be {Expected} but it was {Actual} for context ''")

AssertTrue
bool AssertTrue(
	bool 	Condition,
	FString 	Message,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert that a boolean value is true.

**Parameters**

Message
FString

The message to display if the assert fails ("Assertion Failed: 'Message' for context ''")

AssertValue_Int
bool AssertValue_Int(
	int 	Actual,
	EComparisonMethod 	ShouldBe,
	int 	Expected,
	FString 	What,
const 	UObject 	ContextObject	 = 	nullptr
	)

Assert on a relationship between two integers.

**Parameters**

What
FString

A name to use in the message if the assert fails (What: expected {Actual} to be <ShouldBe> {Expected} for context '')

---

## DEVELOPMENT

### RegisterAutoDestroyActor

```
void RegisterAutoDestroyActor(AActor ActorToAutoDestroy)
```

ACtors registered this way will be automatically destroyed (by limiting their lifespan) on test finish

### FUNCTIONAL TESTING

```
FUNCTIONAL TESTING AddRerun void AddRerun(FName Reason)
```

Causes the test to be rerun for a specific named reason.

### OnWantsReRunCheck

```
bool OnWantsReRunCheck()const
```

retrieves information whether test wants to have another run just after finishing

### DebugGatherRelevantActors

```
TArray<AActor> DebugGatherRelevantActors()const
```

Used by debug drawing to gather actors this test is using and point at them on the level to better understand test's setup

### FinishTest

```
void FinishTest(EFunctionalTestResult TestResult, FString Message)
```

GetCurrentRerunReason

### FName GetCurrentRerunReason

```
FName GetCurrentRerunReason()const
```

Returns the current re-run reason if we're in a named re-run.

### IsEnabled

```
bool IsEnabled()const
```

IsReady

### bool IsReady

```
bool IsReady()
```

IsReady() is called once per frame after a test is run, until it returns true.  You should use this function to delay Start being called on the test until preconditions are met.

### IsRunning

```
bool IsRunning()const
```

AActor interface end

### LogMessage

```
void LogMessage(FString Message)
```

OnAdditionalTestFinishedMessageRequest

### FString OnAdditionalTestFinishedMessageRequest

```
FString OnAdditionalTestFinishedMessageRequest(EFunctionalTestResult TestResult)const
```

SetTimeLimit

### void SetTimeLimit

```
void SetTimeLimit(float32 NewTimeLimit, EFunctionalTestResult ResultWhenTimeRunsOut)
```

---

## REPORTING

### AddError

```
void AddError(FString Message)
```

AddWarning

### void AddWarning

```
void AddWarning(FString Message)
```

---

## FUNCTIONS

### StartTest

```
void StartTest()
```

Called once the IsReady() check for the test returns true.  After that happens the test has Officially started, and it will begin receiving Ticks in the blueprint.

### PrepareTest

```
void PrepareTest()
```

Prepare Test is fired once the test starts up, before the test IsReady() and thus before Start Test is called.  So if there's some initial conditions or setup that you might need for your IsReady() check, you might want to do that here.

### GetbIsEnabled

```
bool GetbIsEnabled()const
```

SetbIsEnabled

### void SetbIsEnabled

```
void SetbIsEnabled(bool Value)
```

GetTimeLimit

### const float32& GetTimeLimit

```
const float32& GetTimeLimit()const STATIC FUNCTIONS
```

Spawn

### static AFunctionalTest AFunctionalTest::Spawn

```
static AFunctionalTest AFunctionalTest::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AFunctionalTest::StaticClass

```
static UClass AFunctionalTest::StaticClass()
```
