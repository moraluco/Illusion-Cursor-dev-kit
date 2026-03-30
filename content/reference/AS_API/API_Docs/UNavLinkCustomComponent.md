# UNavLinkCustomComponent

**Visibility:** public

## Inheritance

UNavRelevantComponent → UNavLinkCustomComponent

## Description

Encapsulates NavLinkCustomInterface interface, can be used with Actors not relevant for navigation

Additional functionality: - can be toggled - can create obstacle area for easier/forced separation of link end points - can broadcast state changes to nearby agents

## BROADCAST

### BroadcastChannel

```
ECollisionChannel BroadcastChannel
```

trace channel for state change broadcast

### BroadcastInterval

```
float32 BroadcastInterval
```

interval for state change broadcast (0 = single broadcast)

### BroadcastRadius

```
float32 BroadcastRadius
```

radius of state change broadcast

---

## OBSTACLE

### ObstacleOffset

```
FVector ObstacleOffset
```

offset of simple box obstacle

### ObstacleExtent

```
FVector ObstacleExtent
```

extent of simple box obstacle

### ObstacleAreaClass

```
TSubclassOf<UNavArea> ObstacleAreaClass
```

area class for simple box obstacle

---

## SMARTLINK

### EnabledAreaClass

```
TSubclassOf<UNavArea> EnabledAreaClass
```

area class to use when link is enabled

### LinkDirection

```
ENavLinkDirection LinkDirection
```

direction of link

### LinkRelativeStart

```
FVector LinkRelativeStart
```

start point, relative to owner

### SupportedAgents

```
FNavAgentSelector SupportedAgents
```

restrict area only to specified agents

### DisabledAreaClass

```
TSubclassOf<UNavArea> DisabledAreaClass
```

area class to use when link is disabled

### LinkRelativeEnd

```
FVector LinkRelativeEnd
```

end point, relative to owner

---

## FUNCTIONS

### SetbNotifyWhenEnabled

```
void SetbNotifyWhenEnabled(bool Value)
```

SetbNotifyWhenDisabled

### void SetbNotifyWhenDisabled

```
void SetbNotifyWhenDisabled(bool Value)
```

SetbCreateBoxObstacle

### void SetbCreateBoxObstacle

```
void SetbCreateBoxObstacle(bool Value)
```

SetbLinkEnabled

### void SetbLinkEnabled

```
void SetbLinkEnabled(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UNavLinkCustomComponent UNavLinkCustomComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UNavLinkCustomComponent UNavLinkCustomComponent::GetOrCreate

```
static UNavLinkCustomComponent UNavLinkCustomComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UNavLinkCustomComponent UNavLinkCustomComponent::Create

```
static UNavLinkCustomComponent UNavLinkCustomComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UNavLinkCustomComponent::StaticClass

```
static UClass UNavLinkCustomComponent::StaticClass()
```
