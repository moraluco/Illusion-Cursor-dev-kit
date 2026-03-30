# UStreamableRenderAsset

**Visibility:** public

## Inheritance

UObject → UStreamableRenderAsset → ULandscapeLODStreamingProxy → USkeletalMesh → UStaticMesh → UTexture → LEVELOFDETAIL → NeverStream

## Description

bool NeverStream bGlobalForceMipLevelsToBeResident bool bGlobalForceMipLevelsToBeResident

Global and serialized version of ForceMiplevelsToBeResident.

NumCinematicMipLevels int NumCinematicMipLevels

Number of mip-levels to use for cinematic quality.

## RENDERING

### SetForceMipLevelsToBeResident

```
void SetForceMipLevelsToBeResident(float32 Seconds, int CinematicLODGroupMask = 0)
```

Tells the streaming system that it should force all mip-levels to be resident for a number of seconds.

**Parameters**

Seconds
float32

Duration in seconds

---

## FUNCTIONS

### SetNeverStream

```
void SetNeverStream(bool Value)
```

GetbGlobalForceMipLevelsToBeResident

### bool GetbGlobalForceMipLevelsToBeResident

```
bool GetbGlobalForceMipLevelsToBeResident()const SetbGlobalForceMipLevelsToBeResident
```

void SetbGlobalForceMipLevelsToBeResident(

### bool 	Value

```
bool 	Value 	)
```

GetNeverStream

### bool GetNeverStream

```
bool GetNeverStream()const STATIC FUNCTIONS
```

StaticClass

### static UClass UStreamableRenderAsset::StaticClass

```
static UClass UStreamableRenderAsset::StaticClass()
```
