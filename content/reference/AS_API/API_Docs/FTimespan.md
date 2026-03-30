# FTimespan

## Inheritance

FTimespan → VARIABLES → Seconds

## Description

const int Seconds Duration const FTimespan Duration FractionMicro const int FractionMicro FractionMilli const int FractionMilli FractionNano const int FractionNano FractionTicks const int FractionTicks Hours const int Hours Minutes const int Minutes Days const int Days Ticks const int64 Ticks TotalDays const float TotalDays TotalHours const float TotalHours TotalMicroseconds const float TotalMicroseconds TotalMilliseconds const float TotalMilliseconds TotalMinutes const float TotalMinutes TotalSeconds const float TotalSeconds

## FUNCTIONS

### GetTicks

```
int64 GetTicks()const
```

opAddAssign

### FTimespan& opAddAssign

```
FTimespan& opAddAssign(FTimespan Other)const
```

opSub

### FTimespan opSub

```
FTimespan opSub()const opSub
```

FTimespan opSub(

### FTimespan 	Other

```
FTimespan 	Other 	) const
```

opSubAssign

### FTimespan& opSubAssign

```
FTimespan& opSubAssign(FTimespan Other)
```

opMul

### FTimespan opMul

```
FTimespan opMul(float Scalar)const
```

opMulAssign

### FTimespan& opMulAssign

```
FTimespan& opMulAssign(float Scalar)
```

opDiv

### FTimespan opDiv

```
FTimespan opDiv(float Scalar)const
```

opDivAssign

### FTimespan& opDivAssign

```
FTimespan& opDivAssign(float Scalar)
```

opMod

### FTimespan opMod

```
FTimespan opMod(FTimespan Other)const
```

opModAssign

### FTimespan& opModAssign

```
FTimespan& opModAssign(FTimespan Other)
```

opEquals

### bool opEquals

```
bool opEquals(FTimespan Other)const
```

GetDays

### int GetDays

```
int GetDays()const GetDuration
```

FTimespan GetDuration()

### GetFractionMicro

```
int GetFractionMicro()const
```

GetFractionMilli

### int GetFractionMilli

```
int GetFractionMilli()const GetFractionNano
```

int GetFractionNano() const

### GetFractionTicks

```
int GetFractionTicks()const
```

GetHours

### int GetHours

```
int GetHours()const GetMinutes
```

int GetMinutes() const

### GetSeconds

```
int GetSeconds()const
```

opAdd

### FTimespan opAdd

```
FTimespan opAdd(FTimespan Other)const
```

GetTotalDays

### float GetTotalDays

```
float GetTotalDays()const GetTotalHours
```

float GetTotalHours() const

### GetTotalMicroseconds

```
float GetTotalMicroseconds()const
```

GetTotalMilliseconds

### float GetTotalMilliseconds

```
float GetTotalMilliseconds()const GetTotalMinutes
```

float GetTotalMinutes() const

### GetTotalSeconds

```
float GetTotalSeconds()const
```

IsZero

### bool IsZero

```
bool IsZero()const ToString
```

FString ToString() const

### ToString

```
FString ToString(const FString Format)const
```

opAssign

### FTimespan& opAssign

```
FTimespan& opAssign(FTimespan Other)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS FromSeconds static FTimespan FTimespan::FromSeconds(float Seconds)
```

FromHours

### static FTimespan FTimespan::FromHours

```
static FTimespan FTimespan::FromHours(float Hours)
```

FromMicroseconds

### static FTimespan FTimespan::FromMicroseconds

```
static FTimespan FTimespan::FromMicroseconds(float Microseconds)
```

FromMilliseconds

### static FTimespan FTimespan::FromMilliseconds

```
static FTimespan FTimespan::FromMilliseconds(float Milliseconds)
```

FromMinutes

### static FTimespan FTimespan::FromMinutes

```
static FTimespan FTimespan::FromMinutes(float Minutes)
```

FromDays

### static FTimespan FTimespan::FromDays

```
static FTimespan FTimespan::FromDays(float Days)
```

MaxValue

### static FTimespan FTimespan::MaxValue

```
static FTimespan FTimespan::MaxValue()
```

MinValue

### static FTimespan FTimespan::MinValue

```
static FTimespan FTimespan::MinValue()
```

Zero

### static FTimespan FTimespan::Zero

```
static FTimespan FTimespan::Zero()
```

Ratio

### static float FTimespan::Ratio

```
static float FTimespan::Ratio(FTimespan Dividend, FTimespan Divisor)
```
