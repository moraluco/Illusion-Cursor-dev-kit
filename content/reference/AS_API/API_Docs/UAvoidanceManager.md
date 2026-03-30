# UAvoidanceManager

**Visibility:** public

## Inheritance

UObject → UAvoidanceManager → AI → NewAvoidanceUID

## Description

const int NewAvoidanceUID

Get appropriate UID for use when reporting to this function or requesting RVO assistance.

ObjectCount const int ObjectCount

Get the number of avoidance objects currently in the manager.

## AVOIDANCE

### DeltaTimeToPredict

```
float32 DeltaTimeToPredict
```

This is how far forward in time (seconds) we extend our velocity cones and thus our prediction

### ArtificialRadiusExpansion

```
float32 ArtificialRadiusExpansion
```

Multiply the radius of all STORED avoidance objects by this value to allow a little extra room for avoidance maneuvers.

### HeightCheckMargin

```
float32 HeightCheckMargin
```

Allowable height margin between obstacles and agents. This is over and above the difference in agent heights.

### LockTimeAfterClean

```
float32 LockTimeAfterClean
```

How long to stay on course (barring collision) after making an unobstructed move (should be > 0.0, but can be less than a full frame)

### LockTimeAfterAvoid

```
float32 LockTimeAfterAvoid
```

How long to stay on course (barring collision) after making an avoidance move

### DefaultTimeToLive

```
float32 DefaultTimeToLive
```

How long an avoidance UID must not be updated before the system will put it back in the pool. Actual delay is up to 150% of this value.

---

## AI

### GetNewAvoidanceUID

```
int GetNewAvoidanceUID()
```

Get appropriate UID for use when reporting to this function or requesting RVO assistance.

### GetObjectCount

```
int GetObjectCount()
```

Get the number of avoidance objects currently in the manager.

### RegisterMovementComponent

```
bool RegisterMovementComponent(UMovementComponent MovementComp, float32 AvoidanceWeight = 0.500000)
```

Register with the given avoidance manager.

**Parameters**

AvoidanceWeight
float32

When avoiding each other, actors divert course in proportion to their relative weights. Range is 0.0 to 1.0. Special: at 1.0, actor will not divert course at all.

GetAvoidanceVelocityForComponent
FVector GetAvoidanceVelocityForComponent(
UMovementComponent 	MovementComp
	)

Calculate avoidance velocity for component (avoids collisions with the supplied component)

STATIC FUNCTIONS
StaticClass
static UClass UAvoidanceManager::StaticClass()
