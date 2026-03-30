# UARFaceGeometry

**Visibility:** public

## Inheritance

UARTrackedGeometry → UARFaceGeometry

## Description

AR AUGMENTEDREALITY|FACE GEOMETRY bIsTracked bool bIsTracked

Whether the face is currently being tracked by the AR system

LookAtTarget FVector LookAtTarget

The target the eyes are looking at

## VARIABLES

### BlendShapes

```
const TMap<EARFaceBlendShape, float32> BlendShapes AR AUGMENTEDREALITY|FACE GEOMETRY GetBlendShapeValue float32 GetBlendShapeValue(EARFaceBlendShape BlendShape)const
```

GetLocalSpaceEyeTransform

### const FTransform& GetLocalSpaceEyeTransform

```
const FTransform& GetLocalSpaceEyeTransform(EAREye Eye)const
```

GetWorldSpaceEyeTransform

### FTransform GetWorldSpaceEyeTransform

```
FTransform GetWorldSpaceEyeTransform(EAREye Eye)const
```

GetBlendShapes

### const TMap<EARFaceBlendShape,float32> GetBlendShapes

```
const TMap<EARFaceBlendShape, float32> GetBlendShapes()const STATIC FUNCTIONS
```

StaticClass

### static UClass UARFaceGeometry::StaticClass

```
static UClass UARFaceGeometry::StaticClass()
```
