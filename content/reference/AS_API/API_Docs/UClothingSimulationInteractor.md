# UClothingSimulationInteractor

**Visibility:** public

## Inheritance

UObject → UClothingSimulationInteractor → UChaosClothingSimulationInteractor → UClothingSimulationInteractorNv

## Description

If a clothing simulation is able to be interacted with at runtime then a derived interactor should be created, and at least the basic API implemented for that simulation.  Only write to the simulation and context during the call to Sync, as that is guaranteed to be a safe place to access this data.

## CLOTHINGSIMULATION

### NumDynamicParticles

```
const int NumDynamicParticles
```

Return the number of dynamic (simulated) particles.

### NumIterations

```
int NumIterations
```

Return the solver number of iterations.  This could be different from the number set if the simulation hasn't updated yet.

### NumKinematicParticles

```
const int NumKinematicParticles
```

Return the number of kinematic (animated) particles.

### NumSubsteps

```
int NumSubsteps
```

Return the solver number of subdivisions./ This could be different from the number set if the simulation hasn't updated yet.

SimulationTime

### SimulationTime

```
const float32 SimulationTime
```

Return the instant average simulation time in ms.

### NumCloths

```
const int NumCloths
```

Return the number of cloths run by the simulation.

---

## CLOTHINGSIMULATION

### GetNumSubsteps

```
int GetNumSubsteps()const
```

Return the solver number of subdivisions./ This could be different from the number set if the simulation hasn't updated yet.

### DisableGravityOverride

```
void DisableGravityOverride()
```

Disable any currently set gravity override.

### EnableGravityOverride

```
void EnableGravityOverride(FVector InVector)
```

Set a new gravity override and enable the override.

### GetClothingInteractor

```
UClothingInteractor GetClothingInteractor(FString ClothingAssetName)const
```

Return a cloth interactor for this simulation.

### GetNumCloths

```
int GetNumCloths()const
```

Return the number of cloths run by the simulation.

### GetNumDynamicParticles

```
int GetNumDynamicParticles()const
```

Return the number of dynamic (simulated) particles.

### GetNumIterations

```
int GetNumIterations()const
```

Return the solver number of iterations.  This could be different from the number set if the simulation hasn't updated yet.

### GetNumKinematicParticles

```
int GetNumKinematicParticles()const
```

Return the number of kinematic (animated) particles.

### ClothConfigUpdated

```
void ClothConfigUpdated()
```

Called to update the cloth config without restarting the simulation.

### GetSimulationTime

```
float32 GetSimulationTime()const
```

Return the instant average simulation time in ms.

### PhysicsAssetUpdated

```
void PhysicsAssetUpdated()
```

Called to update collision status without restarting the simulation.

### SetAnimDriveSpringStiffness

```
void SetAnimDriveSpringStiffness(float32 InStiffness)
```

Set the stiffness of the spring force for the animation drive.

### SetMaxNumIterations

```
void SetMaxNumIterations(int MaxNumIterations = 10)
```

Set the maximum number of solver iterations.

### SetNumIterations

```
void SetNumIterations(int NumIterations = 1)
```

Set the number of time dependent solver iterations.

### SetNumSubsteps

```
void SetNumSubsteps(int NumSubsteps = 1)
```

Set the number of substeps or subdivisions.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UClothingSimulationInteractor::StaticClass()
```
