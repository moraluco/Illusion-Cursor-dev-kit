# UMaterialInterface

**Visibility:** public

## Inheritance

UObject → UMaterialInterface → UMaterial → UMaterialInstance → IMPORTSETTINGS → AssetImportData

## Description

UAssetImportData AssetImportData

Importing data and options used for this material

## LIGHTMASS

### LightmassSettings

```
FLightmassMaterialInterfaceSettings LightmassSettings
```

The Lightmass settings for this object.

---

## MATERIAL

### SubsurfaceProfile

```
USubsurfaceProfile SubsurfaceProfile
```

SubsurfaceProfile, for Screen Space Subsurface Scattering

### AssetUserData

```
TArray<TObjectPtr<UAssetUserData>> AssetUserData
```

Array of user data stored with the asset

---

## PHYSICS \| MATERIAL

### PhysicalMaterial

```
const UPhysicalMaterial PhysicalMaterial
```

Return a pointer to the physical material used by this material instance.

### PhysicalMaterialMask

```
const UPhysicalMaterialMask PhysicalMaterialMask
```

Return a pointer to the physical material mask used by this material instance.

---

## PREVIEWING

### PreviewMesh

```
FSoftObjectPath PreviewMesh
```

The mesh used by the material editor to preview the material.

---

## RENDERING \| MATERIAL

### BaseMaterial

```
const UMaterial BaseMaterial
```

Walks up parent chain and finds the base Material that this is an instance of. Just calls the virtual GetMaterial()

---

## THUMBNAIL

### ThumbnailInfo

```
UThumbnailInfo ThumbnailInfo
```

Information for thumbnail rendering

---

## PHYSICS \| MATERIAL

### GetPhysicalMaterialFromMap

```
UPhysicalMaterial GetPhysicalMaterialFromMap(int Index)const
```

Return a pointer to the physical material from mask map at given index.

**Returns**

The physical material.

GetPhysicalMaterial
UPhysicalMaterial GetPhysicalMaterial() const

Return a pointer to the physical material used by this material instance.

**Returns**

The physical material.

GetPhysicalMaterialMask
UPhysicalMaterialMask GetPhysicalMaterialMask() const

Return a pointer to the physical material mask used by this material instance.

**Returns**

The physical material.

---

## RENDERING \| MATERIAL

### GetParameterInfo

```
FMaterialParameterInfo GetParameterInfo(EMaterialParameterAssociation Association, FName ParameterName, UMaterialFunctionInterface LayerFunction)const
```

SetForceMipLevelsToBeResident

### void SetForceMipLevelsToBeResident

```
void SetForceMipLevelsToBeResident(bool OverrideForceMiplevelsToBeResident, bool bForceMiplevelsToBeResidentValue, float32 ForceDuration, int CinematicTextureGroups = 0, bool bFastResponse = false)
```

Force the streaming system to disregard the normal logic for the specified duration and instead always load all mip-levels for all textures used by this material.

**Parameters**

OverrideForceMiplevelsToBeResident
bool

Whether to use (true) or ignore (false) the bForceMiplevelsToBeResidentValue parameter.

bForceMiplevelsToBeResidentValue
bool

true forces all mips to stream in. false lets other factors decide what to do with the mips.

ForceDuration
float32

Number of seconds to keep all mip-levels in memory, disregarding the normal priority logic. Negative value turns it off.

CinematicTextureGroups
int

Bitfield indicating texture groups that should use extra high-resolution mips

bFastResponse
bool

USE WITH EXTREME CAUTION! Fast response textures incur sizable GT overhead and disturb streaming metric calculation. Avoid whenever possible.

GetBaseMaterial
UMaterial GetBaseMaterial()

Walks up parent chain and finds the base Material that this is an instance of. Just calls the virtual GetMaterial()

STATIC FUNCTIONS
StaticClass
static UClass UMaterialInterface::StaticClass()
