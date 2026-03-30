# UBehaviorTreeComponent

**Visibility:** public

## Inheritance

UBrainComponent → UBehaviorTreeComponent → AI → DefaultBehaviorTreeAsset

## Description

UBehaviorTree DefaultBehaviorTreeAsset

data asset defining the tree

## AI \| LOGIC

### GetTagCooldownEndTime

```
float32 GetTagCooldownEndTime(FGameplayTag CooldownTag)const
```

**Returns**

the cooldown tag end time, 0.0f if CooldownTag is not found

SetDynamicSubtree
void SetDynamicSubtree(
FGameplayTag 	InjectTag,
UBehaviorTree 	BehaviorAsset
	)

assign subtree to RunBehaviorDynamic task specified by tag

AddCooldownTagDuration
void AddCooldownTagDuration(
FGameplayTag 	CooldownTag,
float32 	CooldownDuration,
bool 	bAddToExistingDuration
	)

add to the cooldown tag's duration

STATIC FUNCTIONS
Get
static UBehaviorTreeComponent UBehaviorTreeComponent::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UBehaviorTreeComponent UBehaviorTreeComponent::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UBehaviorTreeComponent UBehaviorTreeComponent::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UBehaviorTreeComponent::StaticClass()
