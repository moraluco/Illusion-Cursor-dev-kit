# ASwitchActor

**Visibility:** public

## Inheritance

AActor → ASwitchActor

## Description

Switch Actor allows quickly toggling the visibility of its child actors so that only one is visible at a time. It can also be captured with the Variant Manager to expose this capability as a property capture

## SWITCHACTOR

### Options

```
const TArray<AActor> Options
```

Returns the child actors that are available options, in a fixed order that may differ from the one displayed in the world outliner

SelectedOption

### SelectedOption

```
const int SelectedOption
```

If we have exactly one child actor visible, it will return a pointer to it. Returns nullptr otherwise

### SceneComponent

```
USceneComponent SceneComponent
```

Exposing our root component like this allows manual Mobility control on the details panel

---

## SWITCHACTOR

### GetSelectedOption

```
int GetSelectedOption()const
```

If we have exactly one child actor visible, it will return a pointer to it. Returns nullptr otherwise

### SelectOption

```
void SelectOption(int OptionIndex)
```

Select one of the available options by index

### GetOptions

```
TArray<AActor> GetOptions()const
```

Returns the child actors that are available options, in a fixed order that may differ from the one displayed in the world outliner

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ASwitchActor ASwitchActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ASwitchActor::StaticClass

```
static UClass ASwitchActor::StaticClass()
```
