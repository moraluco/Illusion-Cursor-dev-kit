# UViewportStatsSubsystem

**Visibility:** public

## Inheritance

UWorldSubsystem → UViewportStatsSubsystem

## Description

The Viewport Stats Subsystem offers the ability to add messages to the current viewport such as "LIGHTING NEEDS TO BE REBUILT" and "BLUEPRINT COMPILE ERROR".

Example usage:

if (UViewportStatsSubsystem* ViewportSubsystem = GetWorld()->GetSubsystem<UViewportStatsSubsystem>()) { // Bind a member function delegate to the subsystem...  FViewportDisplayCallback Callback; Callback.BindDynamic(this, &UCustomClass::DisplayViewportMessage); ViewportSubsystem->AddDisplayDelegate(Callback);

// ... or use inline lambda functions ViewportSubsystem->AddDisplayDelegate([](FText& OutText, FLinearColor& OutColor) { // Some kind of state management OutText = NSLOCTEXT("FooNamespace", "Blarg", "Display message here"); OutColor = FLinearColor::Red; return bShouldDisplay; }); }

### VIEWPORT STATS SUBSYSTEM

```
VIEWPORT STATS SUBSYSTEM AddTimedDisplay void AddTimedDisplay(FText Text, FLinearColor Color, float32 Duration, FVector2D DisplayOffset)
```

Add a message to be displayed on the viewport of this world

**Parameters**

Text
FText

The text to be displayed

Color
FLinearColor

Color of the text to be displayed

Duration
float32

How long the text will be on screen, if 0 then it will stay indefinitely

DisplayOffset
FVector2D

A position offset that the message should use when displayed.

RemoveDisplayDelegate
void RemoveDisplayDelegate(
int 	IndexToRemove
	)

Remove a callback function from the display subsystem

**Parameters**

IndexToRemove
int

The index in the DisplayDelegates array to remove. This is the value returned from AddDisplayDelegate.

AddDisplayDelegate
int AddDisplayDelegate(
FViewportDisplayCallback 	Delegate	 = 	FViewportDisplayCallback ( )
	)

Add a dynamic delegate to the display subsystem.

STATIC FUNCTIONS
Get
static UViewportStatsSubsystem UViewportStatsSubsystem::Get()
StaticClass
static UClass UViewportStatsSubsystem::StaticClass()
