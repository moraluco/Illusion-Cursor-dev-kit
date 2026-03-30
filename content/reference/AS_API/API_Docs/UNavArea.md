# UNavArea

**Visibility:** public

## Inheritance

UNavAreaBase → UNavArea → UNavArea_Default → UNavArea_LowHeight → UNavArea_Null → UNavArea_Obstacle → UNavAreaMeta

## Description

Class containing definition of a navigation area

## NAVAREA

### FixedAreaEnteringCost

```
float32 FixedAreaEnteringCost
```
### cost

```
entering cost
```
### DrawColor

```
FColor DrawColor
```

area color in navigation view

### SupportedAgents

```
FNavAgentSelector SupportedAgents
```

restrict area only to specified agents

### DefaultCost

```
float32 DefaultCost
```

travel cost multiplier for path distance

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNavArea::StaticClass()
```
