# UWaveScalar

**Visibility:** public

## Inheritance

UFieldNodeFloat → UWaveScalar

## Description

Set a temporal wave scalar value according to the sample distance from the field position.

## FIELD

### Position

```
FVector Position
```

Center position of the wave field

### Wavelength

```
float32 Wavelength
```

Distance between 2 wave peaks

### Period

```
float32 Period
```

Time over which the wave will travel from one peak to another one. The wave velocity is proportional to wavelength/period

### Function

```
EWaveFunctionType Function
```

Wave function used for the field

### Falloff

```
EFieldFalloffType Falloff
```

Type of falloff function used if the falloff function is picked

### Magnitude

```
float32 Magnitude
```

Magnitude of the wave function

---

## FIELD

SetWaveScalar

### UWaveScalar SetWaveScalar

```
UWaveScalar SetWaveScalar(float32 Magnitude, FVector Position, float32 Wavelength, float32 Period, float32 Time, EWaveFunctionType Function, EFieldFalloffType Falloff)
```

Set a temporal wave scalar value according to the sample distance from the field position.

**Parameters**

Magnitude
float32

Magnitude of the wave function

Position
FVector

Center position of the wave field

Wavelength
float32

Distance between 2 wave peaks

Period
float32

Time over which the wave will travel from one peak to another one. The wave velocity is proportional to wavelength/period

Function
EWaveFunctionType

Wave function used for the field

Falloff
EFieldFalloffType

Type of falloff function used if the falloff function is picked

STATIC FUNCTIONS
Get
static UWaveScalar UWaveScalar::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UWaveScalar UWaveScalar::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UWaveScalar UWaveScalar::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UWaveScalar::StaticClass()
