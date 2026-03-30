# UParticleModuleBeamModifier

**Visibility:** public

## Inheritance

UParticleModuleBeamBase → UParticleModuleBeamModifier → MODIFIER → ModifierType

## Description

BeamModifierType ModifierType

Whether this module modifies the Source or the Target.

## POSITION

### Position

```
FRawDistributionVector Position
```

The value to use when modifying the position.

### PositionOptions

```
FBeamModifierOptions PositionOptions
```

The options associated with the position.

---

## STRENGTH

### StrengthOptions

```
FBeamModifierOptions StrengthOptions
```

The options associated with the Strength.

### Strength

```
FRawDistributionFloat Strength
```

The value to use when modifying the Strength.

---

## TANGENT

### Tangent

```
FRawDistributionVector Tangent
```

The value to use when modifying the Tangent.

### TangentOptions

```
FBeamModifierOptions TangentOptions
```

The options associated with the Tangent.

---

## FUNCTIONS

### SetbAbsoluteTangent

```
void SetbAbsoluteTangent(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UParticleModuleBeamModifier::StaticClass()
```
