# UCrowdManager

**Visibility:** public

## Inheritance

UCrowdManagerBase → UCrowdManager → CONFIG → MaxAvoidedWalls

## Description

int MaxAvoidedWalls

max number of wall segments for velocity avoidance

SamplingPatterns TArray<FCrowdAvoidanceSamplingPattern> SamplingPatterns

obstacle avoidance params

MaxAgents int MaxAgents

max number of agents supported by crowd

MaxAgentRadius float32 MaxAgentRadius

max radius of agent that can be added to crowd

MaxAvoidedAgents int MaxAvoidedAgents

max number of neighbor agents for velocity avoidance

AvoidanceConfig TArray<FCrowdAvoidanceConfig> AvoidanceConfig

obstacle avoidance params

NavmeshCheckInterval float32 NavmeshCheckInterval

how often should agents check their position after moving off navmesh?

PathOptimizationInterval float32 PathOptimizationInterval

how often should agents try to optimize their paths?

SeparationDirClamp float32 SeparationDirClamp

clamp separation force to left/right when neighbor is behind (dot between forward and dirToNei, -1 = disabled)

PathOffsetRadiusMultiplier float32 PathOffsetRadiusMultiplier

agent radius multiplier for offsetting path around corners

## FUNCTIONS

### SetbResolveCollisions

```
void SetbResolveCollisions(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCrowdManager::StaticClass()
```
