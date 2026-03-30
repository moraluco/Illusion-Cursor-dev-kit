# FGuid

## Inheritance

FGuid → VARIABLES → TypeHash

## Description

const uint TypeHash

## FUNCTIONS

### ToString

```
FString ToString()const
```

opCmp

### int opCmp

```
int opCmp(FGuid Other)const
```

opIndex

### uint& opIndex

```
uint& opIndex(int Index)
```

opIndex

### const uint& opIndex

```
const uint& opIndex(int Index)const
```

Invalidate

### void Invalidate

```
void Invalidate()
```

IsValid

### bool IsValid

```
bool IsValid()const opEquals
```

bool opEquals(

### FGuid 	Other

```
FGuid 	Other 	) const
```

ToString

### FString ToString

```
FString ToString(EGuidFormats Format)const
```

GetTypeHash

### uint GetTypeHash

```
uint GetTypeHash()const opAssign
```

FGuid& opAssign(

### FGuid 	Other

```
FGuid 	Other 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Parse static bool FGuid::Parse(FString GuidString, FGuid& OutGuid)
```

ParseExact

### static bool FGuid::ParseExact

```
static bool FGuid::ParseExact(FString GuidString, EGuidFormats Format, FGuid& OutGuid)
```

NewGuid

### static FGuid FGuid::NewGuid

```
static FGuid FGuid::NewGuid()
```
