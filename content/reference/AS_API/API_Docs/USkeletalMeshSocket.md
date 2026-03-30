# USkeletalMeshSocket

**Visibility:** public

## Inheritance

UObject → USkeletalMeshSocket

## Description

SOCKET PARAMETERS BoneName FName BoneName RelativeLocation FVector RelativeLocation RelativeRotation FRotator RelativeRotation RelativeScale FVector RelativeScale bForceAlwaysAnimated bool bForceAlwaysAnimated

If true then the hierarchy of bones this socket is attached to will always be evaluated, even if it had previously been removed due to the current lod setting

SocketName FName SocketName

Defines a named attachment location on the USkeletalMesh.  These are set up in editor and used as a shortcut instead of specifying everything explicitly to AttachComponent in the SkeletalMeshComponent.  The Outer of a SkeletalMeshSocket should always be the USkeletalMesh.

## COMPONENTS \| SKELETALMESH

### InitializeSocketFromLocation

```
void InitializeSocketFromLocation(const USkeletalMeshComponent SkelComp, FVector WorldLocation, FVector WorldNormal)
```

Sets BoneName, RelativeLocation and RelativeRotation based on closest bone to WorldLocation and WorldNormal

### GetSocketLocation

```
FVector GetSocketLocation(const USkeletalMeshComponent SkelComp)const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USkeletalMeshSocket::StaticClass()
```
