# VisualLoggerKismet

## Inheritance

VisualLoggerKismet

## DEBUG \| VISUALLOGGER

### LogBox

```
static void VisualLoggerKismet::LogBox(
```

UObject 	WorldContextObject,

### FBox 	BoxShape,

```
FBox BoxShape, FString Text, FLinearColor ObjectColor = FLinearColor(0.000000, 0.000000, 1.000000, 1.000000),
```

FName 	LogCategory	 = 	FName ( "" ),

bool 	bAddToMessageLog	 = 	false

)

### shape

```
Logs box shape
```

recording for Visual Logs has to be enabled to record this data

### LogLocation

```
static void VisualLoggerKismet::LogLocation(
```

UObject 	WorldContextObject,

### FVector 	Location,

```
FVector Location, FString Text, FLinearColor ObjectColor = FLinearColor(0.000000, 0.000000, 1.000000, 1.000000),
```

float32 	Radius	 = 	10.000000,

### FName 	LogCategory	 = 	FName

```
FName LogCategory = FName(""), bool bAddToMessageLog = false
```

)

### radius

```
Logs location as sphere with given radius
```

recording for Visual Logs has to be enabled to record this data

### LogSegment

```
static void VisualLoggerKismet::LogSegment(
```

	UObject 	WorldContextObject,

### const 	FVector 	SegmentStart,

```
const FVector SegmentStart, const FVector SegmentEnd, FString Text, FLinearColor ObjectColor = FLinearColor(0.000000, 0.000000, 1.000000, 1.000000),
```

	float32 	Thickness	 = 	0.000000,

### FName 	CategoryName	 = 	FName

```
FName CategoryName = FName(""), bool bAddToMessageLog = false
```

)

### LogText

```
static void VisualLoggerKismet::LogText(UObject WorldContextObject, FString Text, FName LogCategory = FName(""),
```

bool 	bAddToMessageLog	 = 	false

	)

### Logs simple text string with Visual Logger

```
Logs simple text string with Visual Logger
```

recording for Visual Logs has to be enabled to record this data

### RedirectVislog

```
static void VisualLoggerKismet::RedirectVislog(UObject SourceOwner, UObject DestinationOwner)
```

Makes SourceOwner log to DestinationOwner's vislog

### EnableRecording

```
static void VisualLoggerKismet::EnableRecording(bool bEnabled)
```
