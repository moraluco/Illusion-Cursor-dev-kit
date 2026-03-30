# UAnimNotifyState_Trail

**Visibility:** public

## Inheritance

UAnimNotifyState → UAnimNotifyState_Trail → TRAIL → FirstSocketName

## Description

FName FirstSocketName

Name of the first socket defining this trail.

SecondSocketName FName SecondSocketName

Name of the second socket defining this trail.

WidthScaleMode ETrailWidthMode WidthScaleMode

Controls the way width scale is applied. In each method a width scale of 1.0 will mean the width is unchanged from the position of the sockets. A width scale of 0.0 will cause a trail of zero width.  From Centre = Trail width is scaled outwards from the centre point between the two sockets.  From First = Trail width is scaled outwards from the position of the first socket.  From Second = Trail width is scaled outwards from the position of the Second socket.

WidthScaleCurve FName WidthScaleCurve

Name of the curve to drive the width scale.

bRecycleSpawnedSystems bool bRecycleSpawnedSystems PSTemplate UParticleSystem PSTemplate

The particle system to use for this trail.

## FUNCTIONS

### GetbRecycleSpawnedSystems

```
bool GetbRecycleSpawnedSystems()const
```

SetbRecycleSpawnedSystems

### void SetbRecycleSpawnedSystems

```
void SetbRecycleSpawnedSystems(bool Value)
```

SetbRenderGeometry

### void SetbRenderGeometry

```
void SetbRenderGeometry(bool Value)
```

SetbRenderSpawnPoints

### void SetbRenderSpawnPoints

```
void SetbRenderSpawnPoints(bool Value)
```

SetbRenderTangents

### void SetbRenderTangents

```
void SetbRenderTangents(bool Value)
```

SetbRenderTessellation

### void SetbRenderTessellation

```
void SetbRenderTessellation(bool Value)
```

OverridePSTemplate

### UParticleSystem OverridePSTemplate

```
UParticleSystem OverridePSTemplate(USkeletalMeshComponent MeshComp, UAnimSequenceBase Animation)const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimNotifyState_Trail::StaticClass()
```
