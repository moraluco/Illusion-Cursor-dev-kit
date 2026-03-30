# UAnimGraphNode_Base

**Visibility:** public

## Inheritance

UK2Node → UAnimGraphNode_Base → UAnimGraphNode_ApplyAdditive → UAnimGraphNode_ApplyMeshSpaceAdditive → UAnimGraphNode_AssetPlayerBase → UAnimGraphNode_BlendBoneByChannel

## Description

and 33 other children

This is the base class for any animation graph nodes that generate or consume an animation pose in the animation blend graph.

Any concrete implementations will be paired with a runtime graph node derived from FAnimNode_Base

## PINOPTIONS

### ShowPinForProperties

```
TArray<FOptionalPinFromProperty> ShowPinForProperties
```

---

## TAG

### Tag

```
FName Tag
```

Optional reference tag name. If this is set then this node can be referenced from elsewhere in this animation blueprint using an anim node reference

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimGraphNode_Base::StaticClass()
```
