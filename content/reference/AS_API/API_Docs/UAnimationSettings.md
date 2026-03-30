# UAnimationSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UAnimationSettings

## Description

Default animation settings.

## COMPRESSION

### ForceRecompression

```
bool ForceRecompression
```

If true, this will forcibly recompress every animation, this should not be checked in enabled

### bForceBelowThreshold

```
bool bForceBelowThreshold
```

If true and the existing compression error is greater than Alternative Compression Threshold, then any compression technique (even one that increases the size) with a lower error will be used until it falls below the threshold

### bFirstRecompressUsingCurrentOrDefault

```
bool bFirstRecompressUsingCurrentOrDefault
```

If true, then the animation will be first recompressed with it's current compressor if non-NULL, or with the global default compressor (specified in the engine ini) Also known as "Run Current Default Compressor"

### bRaiseMaxErrorToExisting

```
bool bRaiseMaxErrorToExisting
```

If true and the existing compression error is greater than Alternative Compression Threshold, then Alternative Compression Threshold will be effectively raised to the existing error level

### KeyEndEffectorsMatchNameArray

```
TArray<FString> KeyEndEffectorsMatchNameArray
```

List of bone names to treat with higher precision, in addition to any bones with sockets

---

## CUSTOMATTRIBUTES

### BoneTimecodeCustomAttributeNameSettings

```
FTimecodeCustomAttributeNameSettings BoneTimecodeCustomAttributeNameSettings
```

Names that identify bone custom attributes representing the individual components of a timecode and a subframe along with a take name.  These will be included in the list of bone custom attribute names to import.

### AttributeBlendModes

```
TMap<FName,ECustomAttributeBlendType> AttributeBlendModes
```

Custom Attribute specific blend types (by name)

### DefaultAttributeBlendMode

```
ECustomAttributeBlendType DefaultAttributeBlendMode
```

Default Custom Attribute blend type

### BoneCustomAttributesNames

```
TArray<FCustomAttributeSetting> BoneCustomAttributesNames
```

List of custom attribute to import directly on their corresponding bone. The meaning field allows to contextualize the attribute name and customize tooling for it.

### BoneNamesWithCustomAttributes

```
TArray<FString> BoneNamesWithCustomAttributes
```

List of bone names for which all custom attributes are directly imported on the bone.

### TransformAttributeNames

```
TArray<FString> TransformAttributeNames
```

Names to match against when importing FBX node transform curves as attributes (can use ? and * wildcards)

### BoneCustomAttributeNamesToImport

```
const TArray<FString> BoneCustomAttributeNamesToImport
```

Gets the complete list of bone custom attribute names to consider for import.  This includes the designated timecode custom attributes as well as other bone custom attributes identified in the settings.

---

## MIRRORING

### MirrorFindReplaceExpressions

```
TArray<FMirrorFindReplaceExpression> MirrorFindReplaceExpressions
```

Find and Replace Expressions used for mirroring

---

## PERFORMANCE

### bTickAnimationOnSkeletalMeshInit

```
bool bTickAnimationOnSkeletalMeshInit
```

If true, pre-4.19 behavior of zero-ticking animations during skeletal mesh init

### bEnablePerformanceLog

```
bool bEnablePerformanceLog
```

If true, recompression will log performance information

### bStripAnimationDataOnDedicatedServer

```
bool bStripAnimationDataOnDedicatedServer
```

If true, animation track data will be stripped from dedicated server cooked data

---

## CUSTOMATTRIBUTES

### GetBoneCustomAttributeNamesToImport

```
TArray<FString> GetBoneCustomAttributeNamesToImport()const
```

Gets the complete list of bone custom attribute names to consider for import.  This includes the designated timecode custom attributes as well as other bone custom attributes identified in the settings.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimationSettings::StaticClass()
```
