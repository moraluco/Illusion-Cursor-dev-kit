# Automation

## Inheritance

Automation → AUTOMATION → GetStatExcAverage

## Description

static float32 Automation::GetStatExcAverage( FName 	StatName 	) AddTestTelemetryData static void Automation::AddTestTelemetryData( FString 	DataPoint, float32 	Measurement, FString 	Context	 = 	"" 	)

Add Telemetry data to currently running automated test.

AreAutomatedTestsRunning static bool Automation::AreAutomatedTestsRunning()

Lets you know if any automated tests are running, or are about to run and the automation system is spinning up tests.

AutomationWaitForLoading static void Automation::AutomationWaitForLoading(

UObject 	WorldContextObject, FLatentActionInfo 	LatentInfo, FAutomationWaitForLoadingOptions 	Options

) CompareImageAgainstReference static bool Automation::CompareImageAgainstReference(

FString 	ImageFilePath, FString 	ComparisonName	 = 	"", EComparisonTolerance 	ComparisonTolerance	 = 	EComparisonTolerance :: Low, FString 	ComparisonNotes	 = 	"", UObject 	WorldContextObject	 = 	nullptr

)

request image comparison.

Parameters ImageFilePath FString

Absolute path to the image location. All 8bit RGBA channels supported formats by the engine are accepted.

ComparisonName FString

Optional name for the comparison, by default the basename of ImageFilePath is used

Returns

True if comparison was successfully enqueued

DisableStatGroup static void Automation::DisableStatGroup( UObject 	WorldContextObject, FName 	GroupName 	) EnableStatGroup static void Automation::EnableStatGroup( UObject 	WorldContextObject, FName 	GroupName 	) FinishLoadingBeforeScreenshot static void Automation::FinishLoadingBeforeScreenshot() GetDefaultScreenshotOptionsForGameplay static FAutomationScreenshotOptions Automation::GetDefaultScreenshotOptionsForGameplay(

EComparisonTolerance 	Tolerance	 = 	EComparisonTolerance :: Low, float32 	Delay	 = 	0.200000

) GetDefaultScreenshotOptionsForRendering static FAutomationScreenshotOptions Automation::GetDefaultScreenshotOptionsForRendering(

EComparisonTolerance 	Tolerance	 = 	EComparisonTolerance :: Low, float32 	Delay	 = 	0.200000

) GetStatCallCount static float32 Automation::GetStatCallCount( FName 	StatName 	) AddExpectedLogError static void Automation::AddExpectedLogError( FString 	ExpectedPatternString, int 	Occurrences	 = 	1, bool 	ExactMatch	 = 	false 	)

Mute the report of log error and warning matching a pattern during an automated test

GetStatExcMax static float32 Automation::GetStatExcMax( FName 	StatName 	) GetStatIncAverage static float32 Automation::GetStatIncAverage( FName 	StatName 	) GetStatIncMax static float32 Automation::GetStatIncMax( FName 	StatName 	) SetScalabilityQualityLevelRelativeToMax static void Automation::SetScalabilityQualityLevelRelativeToMax(

UObject 	WorldContextObject, int 	Value	 = 	1

)

Sets all other settings based on an overall value

Parameters Value int

0:Cinematic, 1:Epic...etc.

SetScalabilityQualityToEpic static void Automation::SetScalabilityQualityToEpic( UObject 	WorldContextObject 	) SetScalabilityQualityToLow static void Automation::SetScalabilityQualityToLow( UObject 	WorldContextObject 	) SetTestTelemetryStorage static void Automation::SetTestTelemetryStorage( FString 	StorageName 	)

Set Telemetry data storage name of currently running automated test.

TakeAutomationScreenshot static void Automation::TakeAutomationScreenshot(

UObject 	WorldContextObject, FLatentActionInfo 	LatentInfo, FString 	Name, FString 	Notes, FAutomationScreenshotOptions 	Options

)

Takes a screenshot of the game's viewport.  Does not capture any UI.

TakeAutomationScreenshotAtCamera static void Automation::TakeAutomationScreenshotAtCamera(

UObject 	WorldContextObject, FLatentActionInfo 	LatentInfo, ACameraActor 	Camera, FString 	NameOverride, FString 	Notes, FAutomationScreenshotOptions 	Options

)

Takes a screenshot of the game's viewport, from a particular camera actors POV.  Does not capture any UI.

TakeAutomationScreenshotOfUI static void Automation::TakeAutomationScreenshotOfUI(

UObject 	WorldContextObject, FLatentActionInfo 	LatentInfo, FString 	Name, FAutomationScreenshotOptions 	Options

) TakeHighResScreenshot static UAutomationEditorTask Automation::TakeHighResScreenshot(

int 	ResX, int 	ResY, FString 	Filename, ACameraActor 	Camera	 = 	nullptr, bool 	bMaskEnabled	 = 	false, bool 	bCaptureHDR	 = 	false, EComparisonTolerance 	ComparisonTolerance	 = 	EComparisonTolerance :: Low, FString 	ComparisonNotes	 = 	"", float32 	Delay	 = 	0.000000

)

take high res screenshot in editor.
