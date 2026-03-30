# UWindDirectionalSourceComponent

**Visibility:** public

## Inheritance

USceneComponent → UWindDirectionalSourceComponent

## Description

Component that provides a directional wind source. Only affects SpeedTree assets.

## WINDDIRECTIONALSOURCECOMPONENT

### MaxGustAmount

```
float32 MaxGustAmount
```
### Strength

```
float32 Strength
```
### Speed

```
float32 Speed
```
### Radius

```
float32 Radius
```
### bPointWind

```
bool bPointWind MinGustAmount float32 MinGustAmount WIND SetMinimumGustAmount void SetMinimumGustAmount(float32 InNewMinGust)
```

Set minimum deviation for wind gusts

### SetRadius

```
void SetRadius(float32 InNewRadius)
```

Set the effect radius for point wind

### SetSpeed

```
void SetSpeed(float32 InNewSpeed)
```

Sets the windspeed of the generated wind

### SetStrength

```
void SetStrength(float32 InNewStrength)
```

Sets the strength of the generated wind

### SetWindType

```
void SetWindType(EWindSourceType InNewType)
```

Set the type of wind generator to use

### SetMaximumGustAmount

```
void SetMaximumGustAmount(float32 InNewMaxGust)
```

Set maximum deviation for wind gusts

---

## FUNCTIONS

### GetStrength

```
const float32& GetStrength()const
```

GetSpeed

### const float32& GetSpeed

```
const float32& GetSpeed()const GetRadius
```

const float32& GetRadius() const

### GetbPointWind

```
bool GetbPointWind()const
```

SetbPointWind

### void SetbPointWind

```
void SetbPointWind(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UWindDirectionalSourceComponent UWindDirectionalSourceComponent::Get(
```

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) GetOrCreate
```

static UWindDirectionalSourceComponent UWindDirectionalSourceComponent::GetOrCreate(

AActor 	Actor,

FName 	WithName	 = 	NAME_None

### )

```
) Create
```

static UWindDirectionalSourceComponent UWindDirectionalSourceComponent::Create(

### AActor 	Actor,

```
AActor 	Actor, FName 	WithName	 = 	NAME_None
```

)

### StaticClass

```
static UClass UWindDirectionalSourceComponent::StaticClass()
```
