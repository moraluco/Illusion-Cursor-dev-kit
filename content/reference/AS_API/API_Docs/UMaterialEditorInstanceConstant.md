# UMaterialEditorInstanceConstant

**Visibility:** public

## Inheritance

UObject → UMaterialEditorInstanceConstant → LIGHTMASS → LightmassSettings

## Description

FLightmassParameterizedMaterialSettings LightmassSettings

The Lightmass override settings for this object.

## MATERIAL

### SubsurfaceProfile

```
USubsurfaceProfile SubsurfaceProfile
```

SubsurfaceProfile, for Screen Space Subsurface Scattering

---

## MATERIALEDITORINSTANCECONSTANT

### RefractionDepthBias

```
float32 RefractionDepthBias
```

This is the refraction depth bias, larger values offset distortion to prevent closer objects from rendering into the distorted surface at acute viewing angles but increases the disconnect between surface and where the refraction starts.

### ParameterGroups

```
TArray<FEditorParameterGroup> ParameterGroups
```
### Parent

```
UMaterialInterface Parent
```

since the Parent may point across levels and the property editor needs to import this text, it must be marked lazy so it doesn't set itself to NULL in FindImportedObject

### PhysMaterial

```
UPhysicalMaterial PhysMaterial
```

Physical material to use for this graphics material. Used for sounds, effects etc.

---

## MATERIALOVERRIDES

### BasePropertyOverrides

```
FMaterialInstanceBasePropertyOverrides BasePropertyOverrides FUNCTIONS SetbUseOldStyleMICEditorGroups void SetbUseOldStyleMICEditorGroups(bool Value)
```

SetbOverrideSubsurfaceProfile

### void SetbOverrideSubsurfaceProfile

```
void SetbOverrideSubsurfaceProfile(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMaterialEditorInstanceConstant::StaticClass()
```
