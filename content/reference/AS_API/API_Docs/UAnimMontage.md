# UAnimMontage

**Visibility:** public

## Inheritance

UAnimCompositeBase → UAnimMontage

## Description

Any property you're adding to AnimMontage and parent class has to be considered for Child Asset

Child Asset is considered to be only asset mapping feature using everything else in the class For example, you can just use all parent's setting  for the montage, but only remap assets This isn't magic bullet unfortunately and it is consistent effort of keeping the data synced with parent If you add new property, please make sure those property has to be copied for children.  If it does, please add the copy in the function RefreshParentAssetData

## ADDITIVESETTINGS

### PreviewBasePose

```
UAnimSequence PreviewBasePose
```

Preview Base pose for additive BlendSpace

---

## BLENDOPTION

### BlendIn

```
FAlphaBlend BlendIn
```

Blend in option.

### BlendOut

```
FAlphaBlend BlendOut
```

Blend out option. This is only used when it blends out itself. If it's interrupted by other montages, it will use new montage's BlendIn option to blend out.

### BlendOutTriggerTime

```
float32 BlendOutTriggerTime
```

Time from Sequence End to trigger blend out.  <0 means using BlendOutTime, so BlendOut finishes as Montage ends.  >=0 means using 'SequenceEnd - BlendOutTriggerTime' to trigger blend out.

### BlendModeOut

```
EMontageBlendMode BlendModeOut
```
### BlendProfileIn

```
UBlendProfile BlendProfileIn
```

The blend profile to use.

### bEnableAutoBlendOut

```
bool bEnableAutoBlendOut
```

When it hits end, it automatically blends out. If this is false, it won't blend out but keep the last pose until stopped explicitly

### BlendModeIn

```
EMontageBlendMode BlendModeIn
```
### BlendProfileOut

```
UBlendProfile BlendProfileOut
```

The blend profile to use.

---

## MONTAGE

### BlendInArgs

```
const FAlphaBlendArgs BlendInArgs
```

DefaultBlendOutTime const float32 DefaultBlendOutTime DefaultBlendInTime const float32 DefaultBlendInTime

### BlendOutArgs

```
const FAlphaBlendArgs BlendOutArgs
```

---

## SYNCGROUP

### SyncGroup

```
FName SyncGroup
```

If you're using marker based sync for this montage, make sure to add sync group name. For now we only support one group

### SyncSlotIndex

```
int SyncSlotIndex
```

wip: until we have UI working

---

## TIMESTRETCHCURVE

### TimeStretchCurveName

```
FName TimeStretchCurveName
```

Name of optional TimeStretchCurveName to look for in Montage. Time stretch curve will only be used when the montage has a non-default play rate

### TimeStretchCurve

```
FTimeStretchCurve TimeStretchCurve
```

Time stretch curve will only be used when the montage has a non-default play rate

---

## ANIMATION

CreateSlotAnimationAsDynamicMontage_WithBlendSettings

### static UAnimMontage UAnimMontage::CreateSlotAnimationAsDynamicMontage_WithBlendSettings

```
static UAnimMontage UAnimMontage::CreateSlotAnimationAsDynamicMontage_WithBlendSettings(
```

UAnimSequenceBase 	Asset,

FName 	SlotNodeName,

FMontageBlendSettings 	BlendInSettings,

FMontageBlendSettings 	BlendOutSettings,

float32 	InPlayRate	 = 	1.000000,

int 	LoopCount	 = 	1,

### float32 	InBlendOutTriggerTime	 = 	- 1.000000

```
float32 	InBlendOutTriggerTime	 = 	- 1.000000
```

)

### Utility function to create dynamic montage from AnimSequence with blend in settings

```
Utility function to create dynamic montage from AnimSequence with blend in settings
```

---

## MONTAGE

### GetDefaultBlendInTime

```
float32 GetDefaultBlendInTime()const
```

GetDefaultBlendOutTime

### float32 GetDefaultBlendOutTime

```
float32 GetDefaultBlendOutTime()const IsValidSectionName
```

bool IsValidSectionName(

### FName 	InSectionName

```
FName 	InSectionName 	) const
```

**Returns**

true if valid section

GetBlendOutArgs
FAlphaBlendArgs GetBlendOutArgs() const
GetBlendInArgs
FAlphaBlendArgs GetBlendInArgs() const
STATIC FUNCTIONS
StaticClass
static UClass UAnimMontage::StaticClass()
