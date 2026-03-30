# UGridPathFollowingComponent

**Visibility:** public

## Inheritance

UPathFollowingComponent → UGridPathFollowingComponent

## Description

Path following augmented with local navigation grids

Keeps track of nearby grids and use them instead of navigation path when agent is inside.  Once outside grid, regular path following is resumed.

This allows creating dynamic navigation obstacles with fully static navigation (e.g. static navmesh), as long as they are minor modifications for path. Not recommended for blocking off entire corridors.

Does not replace proper avoidance for dynamic obstacles!

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UGridPathFollowingComponent UGridPathFollowingComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UGridPathFollowingComponent UGridPathFollowingComponent::GetOrCreate

```
static UGridPathFollowingComponent UGridPathFollowingComponent::GetOrCreate(
```

AActor 	Actor,

### FName 	WithName	 = 	NAME_None

```
FName 	WithName	 = 	NAME_None
```

)

### Create

```
static UGridPathFollowingComponent UGridPathFollowingComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UGridPathFollowingComponent::StaticClass

```
static UClass UGridPathFollowingComponent::StaticClass()
```
