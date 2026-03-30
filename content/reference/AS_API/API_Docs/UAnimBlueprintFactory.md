# UAnimBlueprintFactory

**Visibility:** public

## Inheritance

UFactory → UAnimBlueprintFactory → UAnimLayerInterfaceFactory → ANIMBLUEPRINTFACTORY → ParentClass

## Description

TSubclassOf<UAnimInstance> ParentClass

The parent class of the created blueprint

TargetSkeleton USkeleton TargetSkeleton

The kind of skeleton that animation graphs compiled from the blueprint will animate

PreviewSkeletalMesh USkeletalMesh PreviewSkeletalMesh

The preview mesh to use with this animation blueprint

bTemplate bool bTemplate

Whether the created blueprint should be a template with no target skeleton

BlueprintType EBlueprintType BlueprintType

The type of blueprint that will be created

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimBlueprintFactory::StaticClass()
```
