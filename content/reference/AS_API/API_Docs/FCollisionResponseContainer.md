# FCollisionResponseContainer

## Inheritance

FCollisionResponseContainer

## Description

STATIC VARIABLES DefaultResponseContainer static const FCollisionResponseContainer FCollisionResponseContainer::DefaultResponseContainer

## FUNCTIONS

### SetAllChannels

```
bool SetAllChannels(ECollisionResponse NewResponse)
```

ReplaceChannels

### bool ReplaceChannels

```
bool ReplaceChannels(ECollisionResponse OldResponse, ECollisionResponse NewResponse)
```

GetResponse

### ECollisionResponse GetResponse

```
ECollisionResponse GetResponse(ECollisionChannel Channel)const
```

opEquals

### bool opEquals

```
bool opEquals(FCollisionResponseContainer Other)const
```

opAssign

### FCollisionResponseContainer& opAssign

```
FCollisionResponseContainer& opAssign(FCollisionResponseContainer Other)
```

SetResponse

### bool SetResponse

```
bool SetResponse(ECollisionChannel Channel, ECollisionResponse NewResponse)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS CreateMinContainer static FCollisionResponseContainer FCollisionResponseContainer::CreateMinContainer(
```

FCollisionResponseContainer 	A,

### FCollisionResponseContainer 	B

```
FCollisionResponseContainer 	B
```

)

### GetDefaultResponseContainer

```
static const FCollisionResponseContainer& FCollisionResponseContainer::GetDefaultResponseContainer()
```
