# UNavModifierComponent

**Visibility:** public

## Inheritance

UNavRelevantComponent → UNavModifierComponent → NAVIGATION → AreaClass

## Description

TSubclassOf<UNavArea> AreaClass FailsafeExtent FVector FailsafeExtent

box extent used ONLY when owning actor doesn't have collision component

## AI \| NAVIGATION

### SetAreaClass

```
void SetAreaClass(TSubclassOf<UNavArea> NewAreaClass)
```

---

## FUNCTIONS

### SetbIncludeAgentHeight

```
void SetbIncludeAgentHeight(bool Value)
```

GetAreaClass

### const TSubclassOf<UNavArea>& GetAreaClass

```
const TSubclassOf<UNavArea>& GetAreaClass()const STATIC FUNCTIONS
```

Get

### static UNavModifierComponent UNavModifierComponent::Get

```
static UNavModifierComponent UNavModifierComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UNavModifierComponent UNavModifierComponent::GetOrCreate

```
static UNavModifierComponent UNavModifierComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UNavModifierComponent UNavModifierComponent::Create

```
static UNavModifierComponent UNavModifierComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UNavModifierComponent::StaticClass

```
static UClass UNavModifierComponent::StaticClass()
```
