# UMeshComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UMeshComponent → UBaseDynamicMeshComponent → UCableComponent → UCustomMeshComponent → UGeometryCacheComponent

## Description

and 14 other children

MeshComponent is an abstract base for any component that is an instance of a renderable collection of triangles.

### See also

- UStaticMeshComponent @see USkeletalMeshComponent

## MATERIALPARAMETERS

### bEnableMaterialParameterCaching

```
bool bEnableMaterialParameterCaching
```

---

## RENDERING

### OverrideMaterials

```
TArray<TObjectPtr<UMaterialInterface>> OverrideMaterials
```

Material overrides.

---

## RENDERING \| MATERIAL

### MaterialSlotNames

```
const TArray<FName> MaterialSlotNames
```
### Materials

```
const TArray<UMaterialInterface> Materials RENDERING PrestreamTextures void PrestreamTextures(float32 Seconds, bool bPrioritizeCharacterTextures, int CinematicTextureGroups = 0)
```

Tell the streaming system to start loading all textures with all mip-levels.

**Parameters**

Seconds
float32

Number of seconds to force all mip-levels to be resident

bPrioritizeCharacterTextures
bool

Whether character textures should be prioritized for a while by the streaming system

CinematicTextureGroups
int

Bitfield indicating which texture groups that use extra high-resolution mips

---

## RENDERING \| MATERIAL

### GetMaterialSlotNames

```
TArray<FName> GetMaterialSlotNames()const
```

IsMaterialSlotNameValid

### bool IsMaterialSlotNameValid

```
bool IsMaterialSlotNameValid(FName MaterialSlotName)const
```

GetMaterials

### TArray<UMaterialInterface> GetMaterials

```
TArray<UMaterialInterface> GetMaterials()const SetVectorParameterValueOnMaterials
```

void SetVectorParameterValueOnMaterials(

### const 	FName 	ParameterName,

```
const 	FVector 	ParameterValue
```

)

### Set all occurrences of Vector Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue

```
Set all occurrences of Vector Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue
```

SetScalarParameterValueOnMaterials

### void SetScalarParameterValueOnMaterials

```
void SetScalarParameterValueOnMaterials(const FName ParameterName, float32 ParameterValue)
```

Set all occurrences of Scalar Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue

### GetMaterialIndex

```
int GetMaterialIndex(FName MaterialSlotName)const
```

---

## FUNCTIONS

### SetbEnableMaterialParameterCaching

```
void SetbEnableMaterialParameterCaching(bool Value)
```

GetbEnableMaterialParameterCaching

### bool GetbEnableMaterialParameterCaching

```
bool GetbEnableMaterialParameterCaching()const STATIC FUNCTIONS
```

Get

### static UMeshComponent UMeshComponent::Get

```
static UMeshComponent UMeshComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UMeshComponent UMeshComponent::GetOrCreate

```
static UMeshComponent UMeshComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UMeshComponent UMeshComponent::Create

```
static UMeshComponent UMeshComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UMeshComponent::StaticClass

```
static UClass UMeshComponent::StaticClass()
```
