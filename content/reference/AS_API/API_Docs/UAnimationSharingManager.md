# UAnimationSharingManager

**Visibility:** public

## Inheritance

UObject → UAnimationSharingManager → ANIMATIONSHARING → AnimationSharingEnabled

## Description

static bool UAnimationSharingManager::AnimationSharingEnabled()

Returns whether or not the animation sharing is enabled

CreateAnimationSharingManager static bool UAnimationSharingManager::CreateAnimationSharingManager(

### const 	UAnimationSharingSetup 	Setup

```
const 	UAnimationSharingSetup 	Setup
```

)

### Create an Animation Sharing Manager using the provided Setup

```
Create an Animation Sharing Manager using the provided Setup
```

GetAnimationSharingManager

### static UAnimationSharingManager UAnimationSharingManager::GetAnimationSharingManager

```
static UAnimationSharingManager UAnimationSharingManager::GetAnimationSharingManager()
```

Returns the AnimationSharing Manager, nullptr if none was set up

### RegisterActorWithSkeletonBP

```
void RegisterActorWithSkeletonBP(AActor InActor, const USkeleton SharingSkeleton)
```

Register an Actor with this Animation Sharing manager, according to the SharingSkeleton

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimationSharingManager::StaticClass()
```
