# UMaterialExpressionNoise

**Visibility:** public

## Inheritance

UMaterialExpression → UMaterialExpressionNoise → MATERIALEXPRESSIONNOISE → Quality

## Description

int Quality

Lower numbers are faster and lower quality, higher numbers are slower and higher quality

NoiseFunction ENoiseFunction NoiseFunction

Noise function, affects performance and look

Levels int Levels

1 = fast but little detail, .. larger numbers cost more performance

OutputMin float32 OutputMin OutputMax float32 OutputMax LevelScale float32 LevelScale

usually 2 but higher values allow efficient use of few levels

RepeatSize uint RepeatSize

How many units in each tile (if Tiling is on)

Scale float32 Scale

can also be done with a multiply on the Position

## FUNCTIONS

### SetbTiling

```
void SetbTiling(bool Value)
```

SetbTurbulence

### void SetbTurbulence

```
void SetbTurbulence(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMaterialExpressionNoise::StaticClass()
```
