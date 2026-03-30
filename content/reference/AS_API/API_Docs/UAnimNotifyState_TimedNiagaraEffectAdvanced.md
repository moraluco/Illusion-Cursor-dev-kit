# UAnimNotifyState_TimedNiagaraEffectAdvanced

**Visibility:** public

## Inheritance

UAnimNotifyState_TimedNiagaraEffect → UAnimNotifyState_TimedNiagaraEffectAdvanced

## Description

Same as Timed Niagara Effect but also provides some more advanced abilities at an additional cost.

## ANIMCURVES

### AnimCurves

```
TArray<FCurveParameterPair> AnimCurves
```

Array of fnames to map Anim Curve names to Niagara Parameters.

---

## NOTIFYPROGRESS

### NotifyProgressUserParameter

```
FName NotifyProgressUserParameter
```

The name of your niagara user variable you would like to send the normalized notify progress to.

### bEnableNormalizedNotifyProgress

```
bool bEnableNormalizedNotifyProgress
```

This send a 0-1 value of the normalized progress to the FX Component to the float User Parameter.

---

## ANIMNOTIFY

### GetNotifyProgress

```
float32 GetNotifyProgress(UMeshComponent MeshComp)const
```

Returns a 0 to 1 value for the progress of this component along the notify.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAnimNotifyState_TimedNiagaraEffectAdvanced::StaticClass()
```
