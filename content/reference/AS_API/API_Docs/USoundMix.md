# USoundMix

**Visibility:** public

## Inheritance

UObject → USoundMix → EQ → EQSettings

## Description

FAudioEQEffect EQSettings EQPriority float32 EQPriority

## SOUNDCLASSES

### SoundClassEffects

```
TArray<FSoundClassAdjuster> SoundClassEffects
```

Array of changes to be applied to groups.

---

## SOUNDMIX

### FadeInTime

```
float32 FadeInTime
```

Time taken in seconds for the mix to fade in.

### Duration

```
float32 Duration
```

Duration of mix, negative means it will be applied until another mix is set.

### FadeOutTime

```
float32 FadeOutTime
```

Time taken in seconds for the mix to fade out.

### InitialDelay

```
float32 InitialDelay
```

Initial delay in seconds before the mix is applied.

---

## FUNCTIONS

### SetbApplyEQ

```
void SetbApplyEQ(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USoundMix::StaticClass()
```
