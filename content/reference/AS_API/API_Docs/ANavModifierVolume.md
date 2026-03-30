# ANavModifierVolume

**Visibility:** public

## Inheritance

AVolume → ANavModifierVolume

## Description

Allows applying selected AreaClass to navmesh, using Volume's shape

## DEFAULT

### AreaClass

```
TSubclassOf<UNavArea> AreaClass
```
### bMaskFillCollisionUnderneathForNavmesh

```
bool bMaskFillCollisionUnderneathForNavmesh
```

Experimental: if set, the 2D space occupied by the volume box will ignore FillCollisionUnderneathForNavmesh

---

## AI \| NAVIGATION

### SetAreaClass

```
void SetAreaClass(TSubclassOf<UNavArea> NewAreaClass = nullptr)
```

---

## FUNCTIONS

### GetAreaClass

```
const TSubclassOf<UNavArea>& GetAreaClass()const
```

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static ANavModifierVolume ANavModifierVolume::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass ANavModifierVolume::StaticClass()
```
