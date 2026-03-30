# USkeletalBodySetup

**Visibility:** public

## Inheritance

UBodySetup → USkeletalBodySetup → BODYSETUP

## Description

bSkipScaleFromAnimation bool bSkipScaleFromAnimation

If true we ignore scale changes from animation. This is useful for subtle scale animations like breathing where the physics collision should remain unchanged

## PHYSICALANIMATION

### CurrentPhysicalAnimationProfile

```
FPhysicalAnimationProfile CurrentPhysicalAnimationProfile
```

dummy place for customization inside phat. Profiles are ordered dynamically and we need a static place for detail customization

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USkeletalBodySetup::StaticClass()
```
