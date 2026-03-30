# FGameplayTag

## Inheritance

FGameplayTag → VARIABLES → GameplayTagParents

## Description

const FGameplayTagContainer GameplayTagParents SingleTagContainer const FGameplayTagContainer SingleTagContainer TagName const FName TagName

## FUNCTIONS

### MatchesAny

```
bool MatchesAny(FGameplayTagContainer ContainerToCheck)const
```

GetTagName

### FName GetTagName

```
FName GetTagName()const opAssign
```

FGameplayTag& opAssign(

### FGameplayTag 	Other

```
FGameplayTag 	Other 	)
```

ToString

### FString ToString

```
FString ToString()const GetGameplayTagParents
```

FGameplayTagContainer GetGameplayTagParents() const

### GetSingleTagContainer

```
FGameplayTagContainer GetSingleTagContainer()const
```

IsValid

### bool IsValid

```
bool IsValid()const opEquals
```

bool opEquals(

### FGameplayTag 	Other

```
FGameplayTag 	Other 	) const
```

MatchesAnyExact

### bool MatchesAnyExact

```
bool MatchesAnyExact(FGameplayTagContainer ContainerToCheck)const
```

MatchesTag

### bool MatchesTag

```
bool MatchesTag(FGameplayTag TagToCheck)const
```

MatchesTagDepth

### int MatchesTagDepth

```
int MatchesTagDepth(FGameplayTag TagToCheck)const
```

MatchesTagExact

### bool MatchesTagExact

```
bool MatchesTagExact(FGameplayTag TagToCheck)const
```

RequestDirectParent

### FGameplayTag RequestDirectParent

```
FGameplayTag RequestDirectParent()const STATIC FUNCTIONS
```

RequestGameplayTag

### static FGameplayTag FGameplayTag::RequestGameplayTag

```
static FGameplayTag FGameplayTag::RequestGameplayTag(FName TagName, bool ErrorIfNotFound = true)
```
