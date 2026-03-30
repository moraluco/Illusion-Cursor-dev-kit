# UTextureEncodingProjectSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UTextureEncodingProjectSettings

## Description

Encoding can either use the "Final" or "Fast" speeds, for supported encoders (e.g. Oodle) These settings have no effect on encoders that don't support encode speed

## ENCODESPEEDS

### CookUsesSpeed

```
ETextureEncodeSpeed CookUsesSpeed
```

Which encode speed non interactive editor sessions will use (i.e. commandlets)

### EditorUsesSpeed

```
ETextureEncodeSpeed EditorUsesSpeed
```

Which encode speed everything else uses.

---

## ENCODESPEEDSETTINGS

### FastRDOLambda

```
int8 FastRDOLambda
```

Ignored if UsesRDO is false. This value is used if a given texture is using "Default" LossyCompressionAmount.  Otherwise, the value of LossyCompressionAmount is translated in to a fixed lambda (see UsesRDO tooltip).

### Low values

```
Low values(1)represent highest quality(least distortion)results.
```

FastEffortLevel

### ETextureEncodeEffort FastEffortLevel

```
ETextureEncodeEffort FastEffortLevel
```

Specifies how much time to take trying for better encode results.

### FastUniversalTiling

```
ETextureUniversalTiling FastUniversalTiling
```

Specifies how to assume textures are laid out on disc. This only applies to Oodle with RDO enabled. 256 KB is a good middle ground. Enabling this will decrease the on-disc sizes of textures for platforms with exposed texture tiling (i.e. consoles), but will slightly increase sizes of textures for platforms with opaque tiling (i.e. desktop).

### FinalUniversalTiling

```
ETextureUniversalTiling FinalUniversalTiling
```

Specifies how to assume textures are laid out on disc. This only applies to Oodle with RDO enabled. 256 KB is a good middle ground. Enabling this will decrease the on-disc sizes of textures for platforms with exposed texture tiling (i.e. consoles), but will slightly increase sizes of textures for platforms with opaque tiling (i.e. desktop).

### FinalEffortLevel

```
ETextureEncodeEffort FinalEffortLevel
```

Specifies how much time to take trying for better encoding results.

### FinalRDOLambda

```
int8 FinalRDOLambda
```

Ignored if UsesRDO is false. This value is used if a given texture is using "Default" LossyCompressionAmount.  Otherwise, the value of LossyCompressionAmount is translated in to a fixed lambda (see UsesRDO tooltip).

### Low values

```
Low values(1)represent highest quality(least distortion)results.
```

---

## FUNCTIONS

### SetbFastUsesRDO

```
void SetbFastUsesRDO(bool Value)
```

SetbFinalUsesRDO

### void SetbFinalUsesRDO

```
void SetbFinalUsesRDO(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTextureEncodingProjectSettings::StaticClass()
```
