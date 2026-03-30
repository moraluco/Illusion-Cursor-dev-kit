# System

## Inheritance

System

## Description

STATIC VARIABLES LocalCurrencySymbol static const FString System::LocalCurrencySymbol BuildConfiguration static const FString System::BuildConfiguration BuildVersion static const FString System::BuildVersion CommandLine static const FString System::CommandLine DefaultLanguage static const FString System::DefaultLanguage DefaultLocale static const FString System::DefaultLocale DeviceId static const FString System::DeviceId EngineVersion static const FString System::EngineVersion FrameCount static const int64 System::FrameCount GameBundleId static const FString System::GameBundleId GameName static const FString System::GameName LocalCurrencyCode static const FString System::LocalCurrencyCode AdIDCount static const int System::AdIDCount MinYResolutionFor3DView static const int System::MinYResolutionFor3DView MinYResolutionForUI static const int System::MinYResolutionForUI PlatformUserDir static const FString System::PlatformUserDir PlatformUserName static const FString System::PlatformUserName PreferredLanguages static const TArray<FString> System::PreferredLanguages ProjectContentDirectory static const FString System::ProjectContentDirectory ProjectDirectory static const FString System::ProjectDirectory ProjectSavedDirectory static const FString System::ProjectSavedDirectory RenderingDetailMode static const int System::RenderingDetailMode RenderingMaterialQualityLevel static const int System::RenderingMaterialQualityLevel VolumeButtonsHandledBySystem static bool System::VolumeButtonsHandledBySystem

## ACTOR

### GetActorListFromComponentList

```
static void System::GetActorListFromComponentList(
```

TArray<UPrimitiveComponent> 	ComponentList,

UClass 	ActorClassFilter,

TArray<AActor>& 	OutActorList

)

Returns an array of unique actors represented by the given list of components.

**Parameters**

ComponentList
TArray<UPrimitiveComponent>

List of components.

OutActorList
TArray<AActor>&

Start of line segment.

---

## ASSETMANAGER

### GetPrimaryAssetIdFromSoftObjectReference

```
static FPrimaryAssetId System::GetPrimaryAssetIdFromSoftObjectReference(
```

### SoftObjectReference

```
TSoftObjectPtr<UObject> SoftObjectReference
```

)

### Returns the Primary Asset Id for a Soft Object Reference, this can return an invalid one if not registered

```
Returns the Primary Asset Id for a Soft Object Reference, this can return an invalid one if not registered
```

GetPrimaryAssetIdList

### static void System::GetPrimaryAssetIdList

```
static void System::GetPrimaryAssetIdList(FPrimaryAssetType PrimaryAssetType, TArray<FPrimaryAssetId>& OutPrimaryAssetIdList)
```

Returns list of PrimaryAssetIds for a PrimaryAssetType

GetPrimaryAssetsWithBundleState

### static void System::GetPrimaryAssetsWithBundleState

```
static void System::GetPrimaryAssetsWithBundleState(
```

TArray<FName> 	RequiredBundles,

TArray<FName> 	ExcludedBundles,

TArray<FPrimaryAssetType> 	ValidTypes,

bool 	bForceCurrentState,

TArray<FPrimaryAssetId>& 	OutPrimaryAssetIdList

### )

```
)
```

Returns the list of assets that are in a given bundle state. Required Bundles must be specified If ExcludedBundles is not empty, it will not return any assets in those bundle states If ValidTypes is not empty, it will only return assets of those types If ForceCurrentState is true it will use the current state even if a load is in process

### UnloadPrimaryAssetList

```
static void System::UnloadPrimaryAssetList(TArray<FPrimaryAssetId> PrimaryAssetIdList)
```

Unloads a primary asset, which allows it to be garbage collected if nothing else is referencing it

### UnloadPrimaryAsset

```
static void System::UnloadPrimaryAsset(FPrimaryAssetId PrimaryAssetId)
```

Unloads a primary asset, which allows it to be garbage collected if nothing else is referencing it

### GetObjectFromPrimaryAssetId

```
static UObject System::GetObjectFromPrimaryAssetId(FPrimaryAssetId PrimaryAssetId)
```

Returns the Object associated with a Primary Asset Id, this will only return a valid object if it is in memory, it will not load it

### GetPrimaryAssetIdFromObject

```
static FPrimaryAssetId System::GetPrimaryAssetIdFromObject(UObject Object)
```

Returns the Primary Asset Id for an Object, this can return an invalid one if not registered

### IsValidPrimaryAssetType

```
static bool System::IsValidPrimaryAssetType(FPrimaryAssetType PrimaryAssetType)
```

Returns list of Primary Asset Ids for a PrimaryAssetType

### GetSoftObjectReferenceFromPrimaryAssetId

```
static TSoftObjectPtr<UObject> System::GetSoftObjectReferenceFromPrimaryAssetId(
```

### PrimaryAssetId

```
FPrimaryAssetId PrimaryAssetId
```

)

### Returns the Object Id associated with a Primary Asset Id, this works even if the asset is not loaded

```
Returns the Object Id associated with a Primary Asset Id, this works even if the asset is not loaded
```

GetSoftClassReferenceFromPrimaryAssetId

### static TSoftClassPtr<UObject> System::GetSoftClassReferenceFromPrimaryAssetId

```
static TSoftClassPtr<UObject> System::GetSoftClassReferenceFromPrimaryAssetId(
```

### PrimaryAssetId

```
FPrimaryAssetId PrimaryAssetId
```

)

### Returns the Blueprint Class Id associated with a Primary Asset Id, this works even if the asset is not loaded

```
Returns the Blueprint Class Id associated with a Primary Asset Id, this works even if the asset is not loaded
```

GetPrimaryAssetIdFromSoftClassReference

### static FPrimaryAssetId System::GetPrimaryAssetIdFromSoftClassReference

```
static FPrimaryAssetId System::GetPrimaryAssetIdFromSoftClassReference(
```

### SoftClassReference

```
TSoftClassPtr<UObject> SoftClassReference
```

)

### Returns the Primary Asset Id for a Soft Class Reference, this can return an invalid one if not registered

```
Returns the Primary Asset Id for a Soft Class Reference, this can return an invalid one if not registered
```

Conv_PrimaryAssetTypeToString

### static FString System::Conv_PrimaryAssetTypeToString

```
static FString System::Conv_PrimaryAssetTypeToString(FPrimaryAssetType PrimaryAssetType)
```

Converts a Primary Asset Type to a string. The other direction is not provided because it cannot be validated

### EqualEqual_PrimaryAssetType

```
static bool System::EqualEqual_PrimaryAssetType(FPrimaryAssetType A, FPrimaryAssetType B)
```

Returns true if the values are equal (A == B)

### IsValidPrimaryAssetId

```
static bool System::IsValidPrimaryAssetId(FPrimaryAssetId PrimaryAssetId)
```

Returns true if the Primary Asset Id is valid

### NotEqual_PrimaryAssetId

```
static bool System::NotEqual_PrimaryAssetId(FPrimaryAssetId A, FPrimaryAssetId B)
```

Returns true if the values are not equal (A != B)

### GetClassFromPrimaryAssetId

```
static TSubclassOf<UObject> System::GetClassFromPrimaryAssetId(FPrimaryAssetId PrimaryAssetId)
```

Returns the Blueprint Class associated with a Primary Asset Id, this will only return a valid object if it is in memory, it will not load it

### GetPrimaryAssetIdFromClass

```
static FPrimaryAssetId System::GetPrimaryAssetIdFromClass(TSubclassOf<UObject> Class)
```

Returns the Primary Asset Id for a Class, this can return an invalid one if not registered

### Conv_PrimaryAssetIdToString

```
static FString System::Conv_PrimaryAssetIdToString(FPrimaryAssetId PrimaryAssetId)
```

Converts a Primary Asset Id to a string. The other direction is not provided because it cannot be validated

### EqualEqual_PrimaryAssetId

```
static bool System::EqualEqual_PrimaryAssetId(FPrimaryAssetId A, FPrimaryAssetId B)
```

Returns true if the values are equal (A == B)

### NotEqual_PrimaryAssetType

```
static bool System::NotEqual_PrimaryAssetType(FPrimaryAssetType A, FPrimaryAssetType B)
```

Returns true if the values are not equal (A != B)

### GetCurrentBundleState

```
static bool System::GetCurrentBundleState(FPrimaryAssetId PrimaryAssetId, bool bForceCurrentState, TArray<FName>& OutBundles)
```

Returns the list of loaded bundles for a given Primary Asset. This will return false if the asset is not loaded at all.  If ForceCurrentState is true it will return the current state even if a load is in process

---

## COLLISION

CapsuleTraceSingleForObjects

### static bool System::CapsuleTraceSingleForObjects

```
static bool System::CapsuleTraceSingleForObjects(
```

const 	FVector 	Start,

const 	FVector 	End,

### float32 	Radius,

```
float32 Radius, float32 HalfHeight, TArray<EObjectTypeQuery> ObjectTypes, bool bTraceComplex, TArray<AActor> ActorsToIgnore, EDrawDebugTrace DrawDebugType, FHitResult& OutHit, bool bIgnoreSelf, FLinearColor TraceColor = FLinearColor(1.000000, 0.000000, 0.000000, 1.000000),
```

	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),

	float32 	DrawTime	 = 	5.000000

)

Sweeps a capsule along the given line and returns the first hit encountered.  This only finds objects that are of a type specified by ObjectTypes.

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

Radius
float32

Radius of the capsule to sweep

HalfHeight
float32

Distance from center of capsule to tip of hemisphere endcap.

ObjectTypes
TArray<EObjectTypeQuery>

Array of Object Types to trace

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHit
FHitResult&

Properties of the trace hit.

**Returns**

True if there was a hit, false otherwise.

SphereOverlapActors
static bool System::SphereOverlapActors(
const 	FVector 	SpherePos,
	float32 	SphereRadius,
	TArray<EObjectTypeQuery> 	ObjectTypes,
	UClass 	ActorClassFilter,
	TArray<AActor> 	ActorsToIgnore,
	TArray<AActor>& 	OutActors
	)

Returns an array of actors that overlap the given sphere.

**Parameters**

SpherePos
const FVector

Center of sphere.

SphereRadius
float32

Size of sphere.

ActorsToIgnore
TArray<AActor>

Ignore these actors in the list

OutActors
TArray<AActor>&

Returned array of actors. Unsorted.

**Returns**

true if there was an overlap that passed the filters, false otherwise.

BoxTraceSingle
static bool System::BoxTraceSingle(

const 	FVector 	Start,
const 	FVector 	End,
const 	FVector 	HalfSize,
const 	FRotator 	Orientation,
	ETraceTypeQuery 	TraceChannel,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	FHitResult& 	OutHit,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweeps a box along the given line and returns the first blocking hit encountered.  This trace finds the objects that RESPONDS to the given TraceChannel

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

HalfSize
const FVector

Distance from the center of box along each axis

Orientation
const FRotator

Orientation of the box

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHit
FHitResult&

Properties of the trace hit.

**Returns**

True if there was a hit, false otherwise.

SphereTraceMultiForObjects
static bool System::SphereTraceMultiForObjects(

const 	FVector 	Start,
const 	FVector 	End,
	float32 	Radius,
	TArray<EObjectTypeQuery> 	ObjectTypes,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	TArray<FHitResult>& 	OutHits,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweeps a sphere along the given line and returns all hits encountered.  This only finds objects that are of a type specified by ObjectTypes.

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

Radius
float32

Radius of the sphere to sweep

ObjectTypes
TArray<EObjectTypeQuery>

Array of Object Types to trace

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHits
TArray<FHitResult>&

A list of hits, sorted along the trace from start to finish.  The blocking hit will be the last hit, if there was one.

**Returns**

True if there was a hit, false otherwise.

BoxTraceMultiForObjects
static bool System::BoxTraceMultiForObjects(

const 	FVector 	Start,
const 	FVector 	End,
const 	FVector 	HalfSize,
const 	FRotator 	Orientation,
	TArray<EObjectTypeQuery> 	ObjectTypes,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	TArray<FHitResult>& 	OutHits,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweeps a box along the given line and returns all hits encountered.  This only finds objects that are of a type specified by ObjectTypes.

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

HalfSize
const FVector

Radius of the sphere to sweep

ObjectTypes
TArray<EObjectTypeQuery>

Array of Object Types to trace

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHits
TArray<FHitResult>&

A list of hits, sorted along the trace from start to finish.  The blocking hit will be the last hit, if there was one.

**Returns**

True if there was a hit, false otherwise.

CapsuleTraceSingleByProfile
static bool System::CapsuleTraceSingleByProfile(

const 	FVector 	Start,
const 	FVector 	End,
	float32 	Radius,
	float32 	HalfHeight,
	FName 	ProfileName,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	FHitResult& 	OutHit,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweep a capsule against the world and return the first blocking hit using a specific profile

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

Radius
float32

Radius of the capsule to sweep

HalfHeight
float32

Distance from center of capsule to tip of hemisphere endcap.

ProfileName
FName

The 'profile' used to determine which components to hit

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHit
FHitResult&

Properties of the trace hit.

**Returns**

True if there was a hit, false otherwise.

BoxTraceMulti
static bool System::BoxTraceMulti(

const 	FVector 	Start,
const 	FVector 	End,
	FVector 	HalfSize,
const 	FRotator 	Orientation,
	ETraceTypeQuery 	TraceChannel,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	TArray<FHitResult>& 	OutHits,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweeps a box along the given line and returns all hits encountered.  This trace finds the objects that RESPONDS to the given TraceChannel

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

HalfSize
FVector

Distance from the center of box along each axis

Orientation
const FRotator

Orientation of the box

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHits
TArray<FHitResult>&

A list of hits, sorted along the trace from start to finish. The blocking hit will be the last hit, if there was one.

**Returns**

True if there was a blocking hit, false otherwise.

LineTraceMulti
static bool System::LineTraceMulti(

const 	FVector 	Start,
const 	FVector 	End,
	ETraceTypeQuery 	TraceChannel,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	TArray<FHitResult>& 	OutHits,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Does a collision trace along the given line and returns all hits encountered up to and including the first blocking hit.  This trace finds the objects that RESPOND to the given TraceChannel

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

TraceChannel
ETraceTypeQuery

The channel to trace

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

**Returns**

True if there was a blocking hit, false otherwise.

CapsuleTraceMultiForObjects
static bool System::CapsuleTraceMultiForObjects(

const 	FVector 	Start,
const 	FVector 	End,
	float32 	Radius,
	float32 	HalfHeight,
	TArray<EObjectTypeQuery> 	ObjectTypes,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	TArray<FHitResult>& 	OutHits,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweeps a capsule along the given line and returns all hits encountered.  This only finds objects that are of a type specified by ObjectTypes.

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

Radius
float32

Radius of the capsule to sweep

HalfHeight
float32

Distance from center of capsule to tip of hemisphere endcap.

ObjectTypes
TArray<EObjectTypeQuery>

Array of Object Types to trace

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHits
TArray<FHitResult>&

A list of hits, sorted along the trace from start to finish.  The blocking hit will be the last hit, if there was one.

**Returns**

True if there was a hit, false otherwise.

LineTraceSingleForObjects
static bool System::LineTraceSingleForObjects(

const 	FVector 	Start,
const 	FVector 	End,
	TArray<EObjectTypeQuery> 	ObjectTypes,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	FHitResult& 	OutHit,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Does a collision trace along the given line and returns the first hit encountered.  This only finds objects that are of a type specified by ObjectTypes.

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

ObjectTypes
TArray<EObjectTypeQuery>

Array of Object Types to trace

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHit
FHitResult&

Properties of the trace hit.

**Returns**

True if there was a hit, false otherwise.

BoxTraceSingleForObjects
static bool System::BoxTraceSingleForObjects(

const 	FVector 	Start,
const 	FVector 	End,
const 	FVector 	HalfSize,
const 	FRotator 	Orientation,
	TArray<EObjectTypeQuery> 	ObjectTypes,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	FHitResult& 	OutHit,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweeps a box along the given line and returns the first hit encountered.  This only finds objects that are of a type specified by ObjectTypes.

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

HalfSize
const FVector

Radius of the sphere to sweep

ObjectTypes
TArray<EObjectTypeQuery>

Array of Object Types to trace

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHit
FHitResult&

Properties of the trace hit.

**Returns**

True if there was a hit, false otherwise.

BoxTraceSingleByProfile
static bool System::BoxTraceSingleByProfile(

const 	FVector 	Start,
const 	FVector 	End,
const 	FVector 	HalfSize,
const 	FRotator 	Orientation,
	FName 	ProfileName,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	FHitResult& 	OutHit,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweep a box against the world and return the first blocking hit using a specific profile

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

HalfSize
const FVector

Distance from the center of box along each axis

Orientation
const FRotator

Orientation of the box

ProfileName
FName

The 'profile' used to determine which components to hit

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHit
FHitResult&

Properties of the trace hit.

**Returns**

True if there was a hit, false otherwise.

CapsuleTraceMultiByProfile
static bool System::CapsuleTraceMultiByProfile(

const 	FVector 	Start,
const 	FVector 	End,
	float32 	Radius,
	float32 	HalfHeight,
	FName 	ProfileName,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	TArray<FHitResult>& 	OutHits,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweep a capsule against the world and return all initial overlaps using a specific profile, then overlapping hits and then first blocking hit Results are sorted, so a blocking hit (if found) will be the last element of the array Only the single closest blocking result will be generated, no tests will be done after that

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

Radius
float32

Radius of the capsule to sweep

HalfHeight
float32

Distance from center of capsule to tip of hemisphere endcap.

ProfileName
FName

The 'profile' used to determine which components to hit

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHits
TArray<FHitResult>&

A list of hits, sorted along the trace from start to finish.  The blocking hit will be the last hit, if there was one.

**Returns**

True if there was a blocking hit, false otherwise.

SphereTraceMultiByProfile
static bool System::SphereTraceMultiByProfile(

const 	FVector 	Start,
const 	FVector 	End,
	float32 	Radius,
	FName 	ProfileName,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	TArray<FHitResult>& 	OutHits,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweep a sphere against the world and return all initial overlaps using a specific profile, then overlapping hits and then first blocking hit Results are sorted, so a blocking hit (if found) will be the last element of the array Only the single closest blocking result will be generated, no tests will be done after that

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

Radius
float32

Radius of the sphere to sweep

ProfileName
FName

The 'profile' used to determine which components to hit

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHits
TArray<FHitResult>&

A list of hits, sorted along the trace from start to finish.  The blocking hit will be the last hit, if there was one.

**Returns**

True if there was a blocking hit, false otherwise.

SphereOverlapComponents
static bool System::SphereOverlapComponents(

const 	FVector 	SpherePos,
	float32 	SphereRadius,
	TArray<EObjectTypeQuery> 	ObjectTypes,
	UClass 	ComponentClassFilter,
	TArray<AActor> 	ActorsToIgnore,
	TArray<UPrimitiveComponent>& 	OutComponents

)

Returns an array of components that overlap the given sphere.

**Parameters**

SpherePos
const FVector

Center of sphere.

SphereRadius
float32

Size of sphere.

ActorsToIgnore
TArray<AActor>

Ignore these actors in the list

**Returns**

true if there was an overlap that passed the filters, false otherwise.

CapsuleOverlapComponents
static bool System::CapsuleOverlapComponents(

const 	FVector 	CapsulePos,
	float32 	Radius,
	float32 	HalfHeight,
	TArray<EObjectTypeQuery> 	ObjectTypes,
	UClass 	ComponentClassFilter,
	TArray<AActor> 	ActorsToIgnore,
	TArray<UPrimitiveComponent>& 	OutComponents

)

Returns an array of components that overlap the given capsule.

**Parameters**

CapsulePos
const FVector

Center of the capsule.

Radius
float32

Radius of capsule hemispheres and radius of center cylinder portion.

HalfHeight
float32

Half-height of the capsule (from center of capsule to tip of hemisphere.

ActorsToIgnore
TArray<AActor>

Ignore these actors in the list

**Returns**

true if there was an overlap that passed the filters, false otherwise.

LineTraceMultiByProfile
static bool System::LineTraceMultiByProfile(

const 	FVector 	Start,
const 	FVector 	End,
	FName 	ProfileName,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	TArray<FHitResult>& 	OutHits,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Trace a ray against the world using a specific profile and return overlapping hits and then first blocking hit Results are sorted, so a blocking hit (if found) will be the last element of the array Only the single closest blocking result will be generated, no tests will be done after that

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

ProfileName
FName

The 'profile' used to determine which components to hit

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

**Returns**

True if there was a blocking hit, false otherwise.

BoxOverlapActors
static bool System::BoxOverlapActors(
const 	FVector 	BoxPos,
	FVector 	BoxExtent,
	TArray<EObjectTypeQuery> 	ObjectTypes,
	UClass 	ActorClassFilter,
	TArray<AActor> 	ActorsToIgnore,
	TArray<AActor>& 	OutActors
	)

Returns an array of actors that overlap the given axis-aligned box.

**Parameters**

BoxPos
const FVector

Center of box.

BoxExtent
FVector

Extents of box.

ActorsToIgnore
TArray<AActor>

Ignore these actors in the list

OutActors
TArray<AActor>&

Returned array of actors. Unsorted.

**Returns**

true if there was an overlap that passed the filters, false otherwise.

SphereTraceSingleForObjects
static bool System::SphereTraceSingleForObjects(

const 	FVector 	Start,
const 	FVector 	End,
	float32 	Radius,
	TArray<EObjectTypeQuery> 	ObjectTypes,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	FHitResult& 	OutHit,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweeps a sphere along the given line and returns the first hit encountered.  This only finds objects that are of a type specified by ObjectTypes.

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

Radius
float32

Radius of the sphere to sweep

ObjectTypes
TArray<EObjectTypeQuery>

Array of Object Types to trace

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHit
FHitResult&

Properties of the trace hit.

**Returns**

True if there was a hit, false otherwise.

SphereTraceSingle
static bool System::SphereTraceSingle(

const 	FVector 	Start,
const 	FVector 	End,
	float32 	Radius,
	ETraceTypeQuery 	TraceChannel,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	FHitResult& 	OutHit,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweeps a sphere along the given line and returns the first blocking hit encountered.  This trace finds the objects that RESPONDS to the given TraceChannel

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

Radius
float32

Radius of the sphere to sweep

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHit
FHitResult&

Properties of the trace hit.

**Returns**

True if there was a hit, false otherwise.

SphereTraceSingleByProfile
static bool System::SphereTraceSingleByProfile(

const 	FVector 	Start,
const 	FVector 	End,
	float32 	Radius,
	FName 	ProfileName,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	FHitResult& 	OutHit,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweep a sphere against the world and return the first blocking hit using a specific profile

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

Radius
float32

Radius of the sphere to sweep

ProfileName
FName

The 'profile' used to determine which components to hit

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHit
FHitResult&

Properties of the trace hit.

**Returns**

True if there was a hit, false otherwise.

CapsuleOverlapActors
static bool System::CapsuleOverlapActors(
const 	FVector 	CapsulePos,
	float32 	Radius,
	float32 	HalfHeight,
	TArray<EObjectTypeQuery> 	ObjectTypes,
	UClass 	ActorClassFilter,
	TArray<AActor> 	ActorsToIgnore,
	TArray<AActor>& 	OutActors
	)

Returns an array of actors that overlap the given capsule.

**Parameters**

CapsulePos
const FVector

Center of the capsule.

Radius
float32

Radius of capsule hemispheres and radius of center cylinder portion.

HalfHeight
float32

Half-height of the capsule (from center of capsule to tip of hemisphere.

ActorsToIgnore
TArray<AActor>

Ignore these actors in the list

OutActors
TArray<AActor>&

Returned array of actors. Unsorted.

**Returns**

true if there was an overlap that passed the filters, false otherwise.

ComponentOverlapActors
static bool System::ComponentOverlapActors(
UPrimitiveComponent 	Component,
FTransform 	ComponentTransform,
TArray<EObjectTypeQuery> 	ObjectTypes,
UClass 	ActorClassFilter,
TArray<AActor> 	ActorsToIgnore,
TArray<AActor>& 	OutActors
	)

Returns an array of actors that overlap the given component.

**Parameters**

Component
UPrimitiveComponent

Component to test with.

ComponentTransform
FTransform

Defines where to place the component for overlap testing.

ActorsToIgnore
TArray<AActor>

Ignore these actors in the list

OutActors
TArray<AActor>&

Returned array of actors. Unsorted.

**Returns**

true if there was an overlap that passed the filters, false otherwise.

BoxTraceMultiByProfile
static bool System::BoxTraceMultiByProfile(

const 	FVector 	Start,
const 	FVector 	End,
	FVector 	HalfSize,
const 	FRotator 	Orientation,
	FName 	ProfileName,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	TArray<FHitResult>& 	OutHits,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweep a box against the world and return all initial overlaps using a specific profile, then overlapping hits and then first blocking hit Results are sorted, so a blocking hit (if found) will be the last element of the array Only the single closest blocking result will be generated, no tests will be done after that

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

HalfSize
FVector

Distance from the center of box along each axis

Orientation
const FRotator

Orientation of the box

ProfileName
FName

The 'profile' used to determine which components to hit

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHits
TArray<FHitResult>&

A list of hits, sorted along the trace from start to finish. The blocking hit will be the last hit, if there was one.

**Returns**

True if there was a blocking hit, false otherwise.

ComponentOverlapComponents
static bool System::ComponentOverlapComponents(

UPrimitiveComponent 	Component,
FTransform 	ComponentTransform,
TArray<EObjectTypeQuery> 	ObjectTypes,
UClass 	ComponentClassFilter,
TArray<AActor> 	ActorsToIgnore,
TArray<UPrimitiveComponent>& 	OutComponents

)

Returns an array of components that overlap the given component.

**Parameters**

Component
UPrimitiveComponent

Component to test with.

ComponentTransform
FTransform

Defines where to place the component for overlap testing.

ActorsToIgnore
TArray<AActor>

Ignore these actors in the list

**Returns**

true if there was an overlap that passed the filters, false otherwise.

LineTraceMultiForObjects
static bool System::LineTraceMultiForObjects(

const 	FVector 	Start,
const 	FVector 	End,
	TArray<EObjectTypeQuery> 	ObjectTypes,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	TArray<FHitResult>& 	OutHits,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Does a collision trace along the given line and returns all hits encountered.  This only finds objects that are of a type specified by ObjectTypes.

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

ObjectTypes
TArray<EObjectTypeQuery>

Array of Object Types to trace

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

**Returns**

True if there was a hit, false otherwise.

GetComponentBounds
static void System::GetComponentBounds(
const 	USceneComponent 	Component,
	FVector& 	Origin,
	FVector& 	BoxExtent,
	float32& 	SphereRadius
	)

Get bounds

CapsuleTraceSingle
static bool System::CapsuleTraceSingle(

const 	FVector 	Start,
const 	FVector 	End,
	float32 	Radius,
	float32 	HalfHeight,
	ETraceTypeQuery 	TraceChannel,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	FHitResult& 	OutHit,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweeps a capsule along the given line and returns the first blocking hit encountered.  This trace finds the objects that RESPOND to the given TraceChannel

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

Radius
float32

Radius of the capsule to sweep

HalfHeight
float32

Distance from center of capsule to tip of hemisphere endcap.

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHit
FHitResult&

Properties of the trace hit.

**Returns**

True if there was a hit, false otherwise.

CapsuleTraceMulti
static bool System::CapsuleTraceMulti(

const 	FVector 	Start,
const 	FVector 	End,
	float32 	Radius,
	float32 	HalfHeight,
	ETraceTypeQuery 	TraceChannel,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	TArray<FHitResult>& 	OutHits,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweeps a capsule along the given line and returns all hits encountered up to and including the first blocking hit.  This trace finds the objects that RESPOND to the given TraceChannel

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

Radius
float32

Radius of the capsule to sweep

HalfHeight
float32

Distance from center of capsule to tip of hemisphere endcap.

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHits
TArray<FHitResult>&

A list of hits, sorted along the trace from start to finish.  The blocking hit will be the last hit, if there was one.

**Returns**

True if there was a blocking hit, false otherwise.

BoxOverlapComponents
static bool System::BoxOverlapComponents(

const 	FVector 	BoxPos,
	FVector 	Extent,
	TArray<EObjectTypeQuery> 	ObjectTypes,
	UClass 	ComponentClassFilter,
	TArray<AActor> 	ActorsToIgnore,
	TArray<UPrimitiveComponent>& 	OutComponents

)

Returns an array of components that overlap the given axis-aligned box.

**Parameters**

BoxPos
const FVector

Center of box.

ActorsToIgnore
TArray<AActor>

Ignore these actors in the list

**Returns**

true if there was an overlap that passed the filters, false otherwise.

LineTraceSingleByProfile
static bool System::LineTraceSingleByProfile(

const 	FVector 	Start,
const 	FVector 	End,
	FName 	ProfileName,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	FHitResult& 	OutHit,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Trace a ray against the world using a specific profile and return the first blocking hit

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

ProfileName
FName

The 'profile' used to determine which components to hit

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHit
FHitResult&

Properties of the trace hit.

**Returns**

True if there was a hit, false otherwise.

LineTraceSingle
static bool System::LineTraceSingle(

const 	FVector 	Start,
const 	FVector 	End,
	ETraceTypeQuery 	TraceChannel,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	FHitResult& 	OutHit,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Does a collision trace along the given line and returns the first blocking hit encountered.  This trace finds the objects that RESPONDS to the given TraceChannel

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHit
FHitResult&

Properties of the trace hit.

**Returns**

True if there was a hit, false otherwise.

SphereTraceMulti
static bool System::SphereTraceMulti(

const 	FVector 	Start,
const 	FVector 	End,
	float32 	Radius,
	ETraceTypeQuery 	TraceChannel,
	bool 	bTraceComplex,
	TArray<AActor> 	ActorsToIgnore,
	EDrawDebugTrace 	DrawDebugType,
	TArray<FHitResult>& 	OutHits,
	bool 	bIgnoreSelf,
	FLinearColor 	TraceColor	 = 	FLinearColor ( 1.000000 , 0.000000 , 0.000000 , 1.000000 ),
	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),
	float32 	DrawTime	 = 	5.000000

)

Sweeps a sphere along the given line and returns all hits encountered up to and including the first blocking hit.  This trace finds the objects that RESPOND to the given TraceChannel

**Parameters**

Start
const FVector

Start of line segment.

End
const FVector

End of line segment.

Radius
float32

Radius of the sphere to sweep

bTraceComplex
bool

True to test against complex collision, false to test against simplified collision.

OutHits
TArray<FHitResult>&

A list of hits, sorted along the trace from start to finish.  The blocking hit will be the last hit, if there was one.

**Returns**

True if there was a blocking hit, false otherwise.

---

## COMPONENTS

MoveComponentTo

### static void System::MoveComponentTo

```
static void System::MoveComponentTo(USceneComponent Component, FVector TargetRelativeLocation, FRotator TargetRelativeRotation, bool bEaseOut, bool bEaseIn, float32 OverTime, bool bForceShortestRotationPath, EMoveComponentAction MoveAction, FLatentActionInfo LatentInfo)
```

Interpolate a component to the specified relative location and rotation over the course of OverTime seconds.  *

**Parameters**

Component
USceneComponent

Component to interpolate *

TargetRelativeLocation
FVector

Relative target location *

TargetRelativeRotation
FRotator

Relative target rotation *

bEaseOut
bool

if true we will ease out (ie end slowly) during interpolation *

bEaseIn
bool

if true we will ease in (ie start slowly) during interpolation *

OverTime
float32

duration of interpolation *

bForceShortestRotationPath
bool

if true we will always use the shortest path for rotation *

MoveAction
EMoveComponentAction

required movement behavior

LatentInfo
FLatentActionInfo

The latent action

---

## DEVELOPMENT

### SetUserActivity

```
static void System::SetUserActivity(FUserActivity UserActivity)
```

Tells the engine what the user is doing for debug, analytics, etc.

### ExecuteConsoleCommand

```
static void System::ExecuteConsoleCommand(FString Command, APlayerController SpecificPlayer = nullptr)
```

Executes a console command, optionally on a specific controller

**Parameters**

Command
FString

Command to send to the console

SpecificPlayer
APlayerController

If specified, the console command will be routed through the specified player

GetBuildConfiguration
static FString System::GetBuildConfiguration()

Build configuration, for displaying to end users in diagnostics.

GetBuildVersion
static FString System::GetBuildVersion()

Build version, for displaying to end users in diagnostics.

GetConsoleVariableBoolValue
static bool System::GetConsoleVariableBoolValue(
FString 	VariableName
	)

Evaluates, if it exists, whether the specified integer console variable has a non-zero value (true) or not (false).

**Parameters**

VariableName
FString

Name of the console variable to find.

**Returns**

True if found and has a non-zero value, false otherwise.

GetConsoleVariableFloatValue
static float32 System::GetConsoleVariableFloatValue(
FString 	VariableName
	)

Attempts to retrieve the value of the specified float console variable, if it exists.

**Parameters**

VariableName
FString

Name of the console variable to find.

**Returns**

The value if found, 0 otherwise.

GetConsoleVariableIntValue
static int System::GetConsoleVariableIntValue(
FString 	VariableName
	)

Attempts to retrieve the value of the specified integer console variable, if it exists.

**Parameters**

VariableName
FString

Name of the console variable to find.

**Returns**

The value if found, 0 otherwise.

GetEngineVersion
static FString System::GetEngineVersion()

Engine build number, for displaying to end users.

PrintString
static void System::PrintString(

	FString 	InString	 = 	"",
	bool 	bPrintToScreen	 = 	true,
	bool 	bPrintToLog	 = 	true,
	FLinearColor 	TextColor	 = 	FLinearColor ( 0.000000 , 0.660000 , 1.000000 , 1.000000 ),
	float32 	Duration	 = 	2.000000,
const 	FName 	Key	 = 	NAME_None

)

Prints a string to the log, and optionally, to the screen If Print To Log is true, it will be visible in the Output Log window.  Otherwise it will be logged only as 'Verbose', so it generally won't show up.

**Parameters**

InString
FString

The string to log out

bPrintToScreen
bool

Whether or not to print the output to the screen

bPrintToLog
bool

Whether or not to print the output to the log

TextColor
FLinearColor

The color of the text to display

Duration
float32

The display duration (if Print to Screen is True). Using negative number will result in loading the duration time from the config.

Key
const FName

If a non-empty key is provided, the message will replace any existing on-screen messages with the same key.

PrintText
static void System::PrintText(

const 	FText 	InText,
	bool 	bPrintToScreen	 = 	true,
	bool 	bPrintToLog	 = 	true,
	FLinearColor 	TextColor	 = 	FLinearColor ( 0.000000 , 0.660000 , 1.000000 , 1.000000 ),
	float32 	Duration	 = 	2.000000,
const 	FName 	Key	 = 	NAME_None

)

Prints text to the log, and optionally, to the screen If Print To Log is true, it will be visible in the Output Log window.  Otherwise it will be logged only as 'Verbose', so it generally won't show up.

**Parameters**

InText
const FText

The text to log out

bPrintToScreen
bool

Whether or not to print the output to the screen

bPrintToLog
bool

Whether or not to print the output to the log

TextColor
FLinearColor

The color of the text to display

Duration
float32

The display duration (if Print to Screen is True). Using negative number will result in loading the duration time from the config.

Key
const FName

If a non-empty key is provided, the message will replace any existing on-screen messages with the same key.

QuitEditor
static void System::QuitEditor()

Exit the editor

IsPackagedForDistribution
static bool System::IsPackagedForDistribution()

Returns whether this is a build that is packaged for distribution

---

## DEVELOPMENT \| EDITOR

### CreateCopyForUndoBuffer

```
static void System::CreateCopyForUndoBuffer(UObject ObjectToModify)
```

Mark as modified.

---

## GAME

### GetGameBundleId

```
static FString System::GetGameBundleId()
```

Retrieves the game's platform-specific bundle identifier or package name of the game

**Returns**

The game's bundle identifier or package name.

GetGameName
static FString System::GetGameName()

Get the name of the current game

QuitGame
static void System::QuitGame(
APlayerController 	SpecificPlayer,
EQuitPreference 	QuitPreference,
bool 	bIgnorePlatformRestrictions
	)

Exit the current game

**Parameters**

SpecificPlayer
APlayerController

The specific player to quit the game. If not specified, player 0 will quit.

QuitPreference
EQuitPreference

Form of quitting.

bIgnorePlatformRestrictions
bool

Ignores and best-practices based on platform (e.g on some consoles, games should never quit). Non-shipping only

---

## MATH \| BOOLEAN

### MakeLiteralBool

```
static bool System::MakeLiteralBool(bool Value)
```

Creates a literal bool

**Parameters**

Value
bool

value to set the bool to

**Returns**

The literal bool

---

## MATH \| BYTE

### MakeLiteralByte

```
static uint8 System::MakeLiteralByte(uint8 Value)
```

Creates a literal byte

**Parameters**

Value
uint8

value to set the byte to

**Returns**

The literal byte

---

## MATH \| DOUBLE

### MakeLiteralDouble

```
static float System::MakeLiteralDouble(float Value)
```

Creates a literal double

**Parameters**

Value
float

value to set the double to

**Returns**

The literal double

---

## MATH \| FLOAT

### MakeLiteralFloat

```
static float32 System::MakeLiteralFloat(float32 Value)
```

Creates a literal float

**Parameters**

Value
float32

value to set the float to

**Returns**

The literal float

---

## MATH \| INTEGER

### MakeLiteralInt

```
static int System::MakeLiteralInt(int Value)
```

Creates a literal integer

**Parameters**

Value
int

value to set the integer to

**Returns**

The literal integer

MakeLiteralInt64
static int64 System::MakeLiteralInt64(
int64 	Value
	)

Creates a literal 64-bit integer

**Parameters**

Value
int64

value to set the 64-bit integer to

**Returns**

The literal 64-bit integer

---

## NETWORKING

### IsStandalone

```
static bool System::IsStandalone()
```

Returns whether this game instance is stand alone (no networking).

### IsServer

```
static bool System::IsServer()
```

Returns whether the world this object is in is the host or not

### IsDedicatedServer

```
static bool System::IsDedicatedServer()
```

Returns whether this is running on a dedicated server

---

## ONLINE

### IsLoggedIn

```
static bool System::IsLoggedIn(const APlayerController SpecificPlayer)
```

Returns whether the player is logged in to the currently active online subsystem.

---

## RENDERING

### GetConvenientWindowedResolutions

```
static bool System::GetConvenientWindowedResolutions(TArray<FIntPoint>& Resolutions)
```

Gets the list of windowed resolutions which are convenient for the current primary display size.

**Returns**

true if successfully queried the device for available resolutions.

GetMinYResolutionForUI
static int System::GetMinYResolutionForUI()

Gets the smallest Y resolution we want to support in the UI, clamped within reasons

**Returns**

value in pixels

GetMinYResolutionFor3DView
static int System::GetMinYResolutionFor3DView()

Gets the smallest Y resolution we want to support in the 3D view, clamped within reasons

**Returns**

value in pixels

GetRenderingDetailMode
static int System::GetRenderingDetailMode()

Get the clamped state of r.DetailMode, see console variable help (allows for scalability, cannot be used in construction scripts) 0: low, show only object with DetailMode low or higher 1: medium, show all object with DetailMode medium or higher 2: high, show all objects

GetSupportedFullscreenResolutions
static bool System::GetSupportedFullscreenResolutions(
TArray<FIntPoint>& 	Resolutions
	)

Gets the list of support fullscreen resolutions.

**Returns**

true if successfully queried the device for available resolutions.

---

## RENDERING \| DEBUG

### FlushDebugStrings

```
static void System::FlushDebugStrings()
```

Removes all debug strings.

### FlushPersistentDebugLines

```
static void System::FlushPersistentDebugLines()
```

Flush all persistent debug lines and shapes.

### DrawDebugArrow

```
static void System::DrawDebugArrow(const FVector LineStart, const FVector LineEnd, float32 ArrowSize, FLinearColor LineColor, float32 Duration = 0.000000, float32 Thickness = 0.000000)
```

Draw directional arrow, pointing from LineStart to LineEnd.

### DrawDebugBox

```
static void System::DrawDebugBox(const FVector Center, FVector Extent, FLinearColor LineColor, const FRotator Rotation = FRotator(),
```

	float32 	Duration	 = 	0.000000,

	float32 	Thickness	 = 	0.000000

### )

```
)
```

Draw a debug box

### DrawDebugCamera

```
static void System::DrawDebugCamera(
```

const 	ACameraActor 	CameraActor,

### FLinearColor 	CameraColor	 = 	FLinearColor

```
FLinearColor CameraColor = FLinearColor(1.000000, 1.000000, 1.000000, 1.000000), float32 Duration = 0.000000
```

)

Draw a debug camera shape.

### DrawDebugCapsule

```
static void System::DrawDebugCapsule(
```

const 	FVector 	Center,

### float32 	HalfHeight,

```
float32 HalfHeight, float32 Radius, const FRotator Rotation, FLinearColor LineColor = FLinearColor(1.000000, 1.000000, 1.000000, 1.000000),
```

	float32 	Duration	 = 	0.000000,

	float32 	Thickness	 = 	0.000000

)

### Draw a debug capsule

```
Draw a debug capsule
```

DrawDebugCircle

### static void System::DrawDebugCircle

```
static void System::DrawDebugCircle(
```

FVector 	Center,

### float32 	Radius,

```
float32 Radius, int NumSegments = 12, FLinearColor LineColor = FLinearColor(1.000000, 1.000000, 1.000000, 1.000000),
```

float32 	Duration	 = 	0.000000,

### float32 	Thickness	 = 	0.000000,

```
float32 Thickness = 0.000000, FVector YAxis = FVector(0.000000, 1.000000, 0.000000),
```

FVector 	ZAxis	 = 	FVector ( 0.000000 , 0.000000 , 1.000000 ),

bool 	bDrawAxis	 = 	false

)

Draw a debug circle!

DrawDebugConeInDegrees

### static void System::DrawDebugConeInDegrees

```
static void System::DrawDebugConeInDegrees(
```

const 	FVector 	Origin,

### const 	FVector 	Direction,

```
const FVector Direction, float32 Length = 100.000000, float32 AngleWidth = 45.000000, float32 AngleHeight = 45.000000, int NumSides = 12, FLinearColor LineColor = FLinearColor(1.000000, 1.000000, 1.000000, 1.000000),
```

	float32 	Duration	 = 	0.000000,

	float32 	Thickness	 = 	0.000000

)

### degrees

```
Draw a debug cone Angles are specified in degrees
```

DrawDebugCoordinateSystem static void System::DrawDebugCoordinateSystem( const 	FVector 	AxisLoc, const 	FRotator 	AxisRot, float32 	Scale	 = 	1.000000, float32 	Duration	 = 	0.000000, float32 	Thickness	 = 	0.000000 )

### Draw a debug coordinate system.

```
Draw a debug coordinate system.
```

AddFloatHistorySample

### static FDebugFloatHistory System::AddFloatHistorySample

```
static FDebugFloatHistory System::AddFloatHistorySample(float32 Value, FDebugFloatHistory FloatHistory)
```

DrawDebugCylinder

### static void System::DrawDebugCylinder

```
static void System::DrawDebugCylinder(
```

const 	FVector 	Start,

### const 	FVector 	End,

```
const FVector End, float32 Radius = 100.000000, int Segments = 12, FLinearColor LineColor = FLinearColor(1.000000, 1.000000, 1.000000, 1.000000),
```

	float32 	Duration	 = 	0.000000,

	float32 	Thickness	 = 	0.000000

)

### Draw a debug cylinder

```
Draw a debug cylinder
```

DrawDebugFloatHistoryLocation

### static void System::DrawDebugFloatHistoryLocation

```
static void System::DrawDebugFloatHistoryLocation(
```

FDebugFloatHistory 	FloatHistory,

### FVector 	DrawLocation,

```
FVector DrawLocation, FVector2D DrawSize, FLinearColor DrawColor = FLinearColor(1.000000, 1.000000, 1.000000, 1.000000),
```

float32 	Duration	 = 	0.000000

)

### Draws a 2D Histogram of size 'DrawSize' based FDebugFloatHistory struct, using DrawLocation for the location in the world, rotation will face camera of first player.

```
Draws a 2D Histogram of size 'DrawSize' based FDebugFloatHistory struct, using DrawLocation for the location in the world, rotation will face camera of first player.
```

DrawDebugFloatHistoryTransform

### static void System::DrawDebugFloatHistoryTransform

```
static void System::DrawDebugFloatHistoryTransform(
```

FDebugFloatHistory 	FloatHistory,

### FTransform 	DrawTransform,

```
FTransform DrawTransform, FVector2D DrawSize, FLinearColor DrawColor = FLinearColor(1.000000, 1.000000, 1.000000, 1.000000),
```

float32 	Duration	 = 	0.000000

### )

```
)
```

Draws a 2D Histogram of size 'DrawSize' based FDebugFloatHistory struct, using DrawTransform for the position in the world.

### DrawDebugFrustum

```
static void System::DrawDebugFrustum(
```

FTransform 	FrustumTransform,

### FLinearColor 	FrustumColor	 = 	FLinearColor

```
FLinearColor FrustumColor = FLinearColor(1.000000, 1.000000, 1.000000, 1.000000), float32 Duration = 0.000000,
```

float32 	Thickness	 = 	0.000000

)

Draws a debug frustum.

### DrawDebugLine

```
static void System::DrawDebugLine(const FVector LineStart, const FVector LineEnd, FLinearColor LineColor, float32 Duration = 0.000000, float32 Thickness = 0.000000)
```

Draw a debug line

### DrawDebugPlane

```
static void System::DrawDebugPlane(
```

	FPlane 	PlaneCoordinates,

### const 	FVector 	Location,

```
const FVector Location, float32 Size, FLinearColor PlaneColor = FLinearColor(1.000000, 1.000000, 1.000000, 1.000000),
```

	float32 	Duration	 = 	0.000000

)

### Draws a debug plane.

```
Draws a debug plane.
```

DrawDebugPoint

### static void System::DrawDebugPoint

```
static void System::DrawDebugPoint(const FVector Position, float32 Size, FLinearColor PointColor, float32 Duration = 0.000000)
```

Draw a debug point

### DrawDebugSphere

```
static void System::DrawDebugSphere(
```

const 	FVector 	Center,

### float32 	Radius	 = 	100.000000,

```
float32 Radius = 100.000000, int Segments = 12, FLinearColor LineColor = FLinearColor(1.000000, 1.000000, 1.000000, 1.000000),
```

	float32 	Duration	 = 	0.000000,

	float32 	Thickness	 = 	0.000000

)

### Draw a debug sphere

```
Draw a debug sphere
```

DrawDebugString

### static void System::DrawDebugString

```
static void System::DrawDebugString(
```

const 	FVector 	TextLocation,

### FString 	Text,

```
FString Text, AActor TestBaseActor = nullptr, FLinearColor TextColor = FLinearColor(1.000000, 1.000000, 1.000000, 1.000000),
```

	float32 	Duration	 = 	0.000000

### )

```
)
```

Draw a debug string at a 3d world location.

---

## RENDERING \| MATERIAL

### GetRenderingMaterialQualityLevel

```
static int System::GetRenderingMaterialQualityLevel()
```

Get the clamped state of r.MaterialQualityLevel, see console variable help (allows for scalability, cannot be used in construction scripts) 0: low 1: high 2: medium

---

## TRANSACTIONS

### CancelTransaction

```
static void System::CancelTransaction(int Index)
```

Cancel the current transaction, and no longer capture actions to be placed in the undo buffer.  Note: Only available in the editor.

**Parameters**

Index
int

The action counter to cancel transactions from (as returned by a call to BeginTransaction).

TransactObject
static void System::TransactObject(
UObject 	Object
	)

Notify the current transaction (if any) that this object is about to be modified and should be placed into the undo buffer.  Note: Internally this calls Modify on the given object, so will also mark the owner package dirty.  Note: Only available in the editor.

**Parameters**

Object
UObject

The object that is about to be modified.

SnapshotObject
static void System::SnapshotObject(
UObject 	Object
	)

Notify the current transaction (if any) that this object is about to be modified and should be snapshot for intermediate update.  Note: Internally this calls SnapshotTransactionBuffer on the given object.  Note: Only available in the editor.

**Parameters**

Object
UObject

The object that is about to be modified.

EndTransaction
static int System::EndTransaction()

Attempt to end the current undo transaction. Only successful if the transaction's action counter is 1.  Note: Only available in the editor.

**Returns**

The number of active actions when EndTransaction was called (a value of 1 indicates that the transaction was successfully closed), or -1 on failure.

BeginTransaction
static int System::BeginTransaction(
FString 	Context,
FText 	Description,
UObject 	PrimaryObject
	)

Begin a new undo transaction. An undo transaction is defined as all actions which take place when the user selects "undo" a single time.  Note: If there is already an active transaction in progress, then this increments that transaction's action counter instead of beginning a new transaction.  Note: You must call TransactObject before modifying each object that should be included in this undo transaction.  Note: Only available in the editor.

**Parameters**

Context
FString

The context for the undo session. Typically the tool/editor that caused the undo operation.

Description
FText

The description for the undo session. This is the text that will appear in the "Edit" menu next to the Undo item.

PrimaryObject
UObject

The primary object that the undo session operators on (can be null, and mostly is).

**Returns**

The number of active actions when BeginTransaction was called (values greater than 0 indicate that there was already an existing undo transaction in progress), or -1 on failure.

---

## UTILITIES

### EqualEqual_SoftClassReference

```
static bool System::EqualEqual_SoftClassReference(TSoftClassPtr<UObject> A, TSoftClassPtr<UObject> B)
```

Returns true if the values are equal (A == B)

### EqualEqual_SoftObjectReference

```
static bool System::EqualEqual_SoftObjectReference(TSoftObjectPtr<UObject> A, TSoftObjectPtr<UObject> B)
```

Returns true if the values are equal (A == B)

### Conv_ObjectToClass

```
static UClass System::Conv_ObjectToClass(UObject Object, TSubclassOf<UObject> Class)
```

Converts an object into a class

### BreakSoftClassPath

```
static void System::BreakSoftClassPath(FSoftClassPath InSoftClassPath, FString& PathString)
```

Gets the path string out of a Soft Class Path

### Conv_SoftClassPathToSoftClassRef

```
static TSoftClassPtr<UObject> System::Conv_SoftClassPathToSoftClassRef(
```

### SoftClassPath

```
FSoftClassPath SoftClassPath
```

)

### Converts a Soft Class Path into a base Soft Class Reference, this is not guaranteed to be resolvable

```
Converts a Soft Class Path into a base Soft Class Reference, this is not guaranteed to be resolvable
```

BreakSoftObjectPath

### static void System::BreakSoftObjectPath

```
static void System::BreakSoftObjectPath(FSoftObjectPath InSoftObjectPath, FString& PathString)
```

Gets the path string out of a Soft Object Path

### Conv_SoftClassReferenceToString

```
static FString System::Conv_SoftClassReferenceToString(
```

### SoftClassReference

```
TSoftClassPtr<UObject> SoftClassReference
```

)

### Converts a Soft Class Reference to a string. The other direction is not provided because it cannot be validated

```
Converts a Soft Class Reference to a string. The other direction is not provided because it cannot be validated
```

GetClassDisplayName

### static FString System::GetClassDisplayName

```
static FString System::GetClassDisplayName(UClass Class)
```

Returns the display name of a class

### Conv_SoftObjectReferenceToString

```
static FString System::Conv_SoftObjectReferenceToString(
```

### TSoftObjectPtr<UObject> 	SoftObjectReference

```
TSoftObjectPtr<UObject> 	SoftObjectReference
```

)

### Converts a Soft Object Reference to a string. The other direction is not provided because it cannot be validated

```
Converts a Soft Object Reference to a string. The other direction is not provided because it cannot be validated
```

GetCommandLine

### static FString System::GetCommandLine

```
static FString System::GetCommandLine()
```

Returns the command line that the process was launched with.

### Conv_SoftObjPathToSoftObjRef

```
static TSoftObjectPtr<UObject> System::Conv_SoftObjPathToSoftObjRef(
```

### FSoftObjectPath 	SoftObjectPath

```
FSoftObjectPath 	SoftObjectPath
```

)

### Converts a Soft Object Path into a base Soft Object Reference, this is not guaranteed to be resolvable

```
Converts a Soft Object Path into a base Soft Object Reference, this is not guaranteed to be resolvable
```

GetFrameCount

### static int64 System::GetFrameCount

```
static int64 System::GetFrameCount()
```

Returns the value of GFrameCounter, a running count of the number of frames that have occurred.

### DoesImplementInterface

```
static bool System::DoesImplementInterface(const UObject TestObject, TSubclassOf<UInterface> Interface)
```

Checks if this object implements a specific interface, works for both native and blueprint interfacse

### GetObjectName

```
static FString System::GetObjectName(const UObject Object)
```

Returns the actual object name.

### GetOuterObject

```
static UObject System::GetOuterObject(const UObject Object)
```

Returns the outer object of an object.

### GetPathName

```
static FString System::GetPathName(const UObject Object)
```

Returns the full path to the specified object.

### GetDisplayName

```
static FString System::GetDisplayName(const UObject Object)
```

Returns the display name (or actor label), for displaying as a debugging aid.  Note: In editor builds, this is the actor label.  In non-editor builds, this is the actual object name.  This function should not be used to uniquely identify actors!  It is not localized and should not be used for display to an end user of a game.

### IsValid

```
static bool System::IsValid(const UObject Object)
```

Return true if the object is usable : non-null and not pending kill

### IsValidClass

```
static bool System::IsValidClass(UClass Class)
```

Return true if the class is usable : non-null and not pending kill

### NotEqual_SoftClassReference

```
static bool System::NotEqual_SoftClassReference(TSoftClassPtr<UObject> A, TSoftClassPtr<UObject> B)
```

Returns true if the values are not equal (A != B)

### NotEqual_SoftObjectReference

```
static bool System::NotEqual_SoftObjectReference(TSoftObjectPtr<UObject> A, TSoftObjectPtr<UObject> B)
```

Returns true if the values are not equal (A != B)

### ParseCommandLine

```
static void System::ParseCommandLine(FString InCmdLine, TArray<FString>& OutTokens, TArray<FString>& OutSwitches, TMap<FString, FString>& OutParams)
```

* Parses the given string into loose tokens, switches (arguments that begin with

### or /) and parameters

```
or /)and parameters(-mySwitch = myVar)* *
```

**Parameters**

InCmdLine
FString

The the string to parse (ie '-foo -bar=/game/baz testtoken' ) *

IsValidSoftClassReference
static bool System::IsValidSoftClassReference(
TSoftClassPtr<UObject> 	SoftClassReference
	)

Returns true if the Soft Class Reference is not null

MakeSoftClassPath
static FSoftClassPath System::MakeSoftClassPath(
FString 	PathString
	)

Builds a SoftClassPath struct. Generally you should be using Soft Class References/Ptr types instead

LoadAsset_Blocking
static UObject System::LoadAsset_Blocking(
TSoftObjectPtr<UObject> 	Asset
	)

Resolves or loads a Soft Object Reference immediately, this will cause hitches and Async Load Asset should be used if possible

IsUnattended
static bool System::IsUnattended()

Returns true if running unattended (-unattended is on the command line)

**Returns**

Unattended state

LoadClassAsset_Blocking
static UClass System::LoadClassAsset_Blocking(
TSoftClassPtr<UObject> 	AssetClass
	)

Resolves or loads a Soft Class Reference immediately, this will cause hitches and Async Load Class Asset should be used if possible

IsValidSoftObjectReference
static bool System::IsValidSoftObjectReference(
TSoftObjectPtr<UObject> 	SoftObjectReference
	)

Returns true if the Soft Object Reference is not null

ParseParamValue
static bool System::ParseParamValue(
FString 	InString,
FString 	InParam,
FString& 	OutValue
	)

Returns 'value' if -option=value is in the string

MakeSoftObjectPath
static FSoftObjectPath System::MakeSoftObjectPath(
FString 	PathString
	)

Builds a SoftObjectPath struct. Generally you should be using Soft Object References/Ptr types instead

ParseParam
static bool System::ParseParam(
FString 	InString,
FString 	InParam
	)

Returns true if the string has -param in it (do not specify the leading -)

---

## UTILITIES \| FLOWCONTROL

### RetriggerableDelay

```
static void System::RetriggerableDelay(float32 Duration, FLatentActionInfo LatentInfo)
```

Perform a latent action with a retriggerable delay (specified in seconds).  Calling again while it is counting down will reset the countdown to Duration.

**Parameters**

Duration
float32

length of delay (in seconds).

LatentInfo
FLatentActionInfo

The latent action.

DelayUntilNextTick
static void System::DelayUntilNextTick(
FLatentActionInfo 	LatentInfo
	)

Perform a latent action with a delay of one tick.  Calling again while it is counting down will be ignored.

**Parameters**

LatentInfo
FLatentActionInfo

The latent action.

Delay
static void System::Delay(
float32 	Duration,
FLatentActionInfo 	LatentInfo
	)

Perform a latent action with a delay (specified in seconds).  Calling again while it is counting down will be ignored.

**Parameters**

Duration
float32

length of delay (in seconds).

LatentInfo
FLatentActionInfo

The latent action.

---

## UTILITIES \| INTERNATIONALIZATION

### GetPreferredLanguages

```
static TArray<FString> System::GetPreferredLanguages()
```

Returns an array of the user's preferred languages in order of preference

**Returns**

An array of language IDs ordered from most preferred to least

GetDefaultLanguage
static FString System::GetDefaultLanguage()

Get the default language (for localization) used by this platform Note: This is typically the same as GetDefaultLocale unless the platform distinguishes between the two Note: This should be returned in IETF language tag form: - A two-letter ISO 639-1 language code (eg, "zh") - An optional four-letter ISO 15924 script code (eg, "Hans") - An optional two-letter ISO 3166-1 country code (eg, "CN")

**Returns**

The language as an IETF language tag (eg, "zh-Hans-CN")

GetDefaultLocale
static FString System::GetDefaultLocale()

Get the default locale (for internationalization) used by this platform Note: This should be returned in IETF language tag form: - A two-letter ISO 639-1 language code (eg, "zh") - An optional four-letter ISO 15924 script code (eg, "Hans") - An optional two-letter ISO 3166-1 country code (eg, "CN")

**Returns**

The locale as an IETF language tag (eg, "zh-Hans-CN")

GetLocalCurrencySymbol
static FString System::GetLocalCurrencySymbol()

Returns the currency symbol associated with the device's locale

**Returns**

the currency symbol associated with the device's locale

GetLocalCurrencyCode
static FString System::GetLocalCurrencyCode()

Returns the currency code associated with the device's locale

**Returns**

the currency code associated with the device's locale

---

## UTILITIES \| NAME

### MakeLiteralName

```
static FName System::MakeLiteralName(FName Value)
```

Creates a literal name

**Parameters**

Value
FName

value to set the name to

**Returns**

The literal name

---

## UTILITIES \| PATHS

### GetProjectSavedDirectory

```
static FString System::GetProjectSavedDirectory()
```

Get the saved directory of the current project

### ConvertToRelativePath

```
static FString System::ConvertToRelativePath(FString Filename)
```

Converts passed in filename to use a relative path

### ConvertToAbsolutePath

```
static FString System::ConvertToAbsolutePath(FString Filename)
```

Converts passed in filename to use a absolute path

### GetProjectDirectory

```
static FString System::GetProjectDirectory()
```

Get the directory of the current project

### GetProjectContentDirectory

```
static FString System::GetProjectContentDirectory()
```

Get the content directory of the current project

### NormalizeFilename

```
static FString System::NormalizeFilename(FString InFilename)
```

Convert all / and \ to TEXT("/")

### GetSystemPath

```
static FString System::GetSystemPath(const UObject Object)
```

Returns the full system path to a UObject If given a non-asset UObject, it will return an empty string

---

## UTILITIES \| PLATFORM

### GetPlatformUserName

```
static FString System::GetPlatformUserName()
```

Get the current user name from the OS

### LaunchURL

```
static void System::LaunchURL(FString URL)
```

Opens the specified URL in the platform's web browser of choice

### GetPlatformUserDir

```
static FString System::GetPlatformUserDir()
```

Get the current user dir from the OS

### HideAdBanner

```
static void System::HideAdBanner()
```

Hides the ad banner (iAd on iOS, or AdMob on Android). Will force close the ad if it's open (iOS and Android only)

### GetAdIDCount

```
static int System::GetAdIDCount()
```

Retrieves the total number of Ad IDs that can be selected between

### ForceCloseAdBanner

```
static void System::ForceCloseAdBanner()
```

Forces closed any displayed ad. Can lead to loss of revenue (iOS and Android only)

### ControlScreensaver

```
static void System::ControlScreensaver(bool bAllowScreenSaver)
```

Allows or inhibits screensaver

**Parameters**

bAllowScreenSaver
bool

If false, don't allow screensaver if possible, otherwise allow default behavior

CollectGarbage
static void System::CollectGarbage()

Deletes all unreferenced objects, keeping only referenced objects (this command will be queued and happen at the end of the frame) Note: This can be a slow operation, and should only be performed where a hitch would be acceptable

LoadInterstitialAd
static void System::LoadInterstitialAd(
int 	AdIdIndex
	)

Will load a fullscreen interstitial AdMob ad. Call this before using ShowInterstitialAd (Android only)

**Parameters**

AdIdIndex
int

The index of the ID to select for the ad to show

GetVolumeButtonsHandledBySystem
static bool System::GetVolumeButtonsHandledBySystem()

Returns true if system default handling of volume up and volume down buttons enabled (Android only)

IsInterstitialAdAvailable
static bool System::IsInterstitialAdAvailable()

Returns true if the requested interstitial ad is loaded and ready (Android only)

CanLaunchURL
static bool System::CanLaunchURL(
FString 	URL
	)
GetGamepadControllerName
static FString System::GetGamepadControllerName(
int 	ControllerId
	)

Returns name of controller if assigned to a gamepad (or None if not assigned) (Android and iOS only)

IsScreensaverEnabled
static bool System::IsScreensaverEnabled()

Returns true if screen saver is enabled.

GetGamepadButtonGlyph
static UTexture2D System::GetGamepadButtonGlyph(
FString 	ButtonKey,
int 	ControllerIndex
	)

Returns glyph assigned to a gamepad button (or a null ptr if not assigned) (iOS and tvOS only)

GetDeviceId
static FString System::GetDeviceId()

Returns the platform specific unique device id

IsInterstitialAdRequested
static bool System::IsInterstitialAdRequested()

Returns true if the requested interstitial ad has been successfully requested (false if load request fails) (Android only)

IsControllerAssignedToGamepad
static bool System::IsControllerAssignedToGamepad(
int 	ControllerId
	)

Returns true if controller id assigned to a gamepad (Android and iOS only)

UnregisterForRemoteNotifications
static void System::UnregisterForRemoteNotifications()

Requests Requests unregistering from receiving remote notifications to the user's device.  (Android only)

RegisterForRemoteNotifications
static void System::RegisterForRemoteNotifications()

Requests permission to send remote notifications to the user's device.  (Android and iOS only)

SetGamepadsBlockDeviceFeedback
static void System::SetGamepadsBlockDeviceFeedback(
bool 	bBlock
	)

Sets whether attached gamepads will block feedback from the device itself (Mobile only).

SetVolumeButtonsHandledBySystem
static void System::SetVolumeButtonsHandledBySystem(
bool 	bEnabled
	)

Allows or inhibits system default handling of volume up and volume down buttons (Android only)

**Parameters**

bEnabled
bool

If true, allow Android to handle volume up and down events

ShowPlatformSpecificLeaderboardScreen
static void System::ShowPlatformSpecificLeaderboardScreen(
FString 	CategoryName
	)

Displays the built-in leaderboard GUI (iOS and Android only; this function may be renamed or moved in a future release)

ShowAdBanner
static void System::ShowAdBanner(
int 	AdIdIndex,
bool 	bShowOnBottomOfScreen
	)

Will show an ad banner (iAd on iOS, or AdMob on Android) on the top or bottom of screen, on top of the GL view (doesn't resize the view) (iOS and Android only)

**Parameters**

AdIdIndex
int

The index of the ID to select for the ad to show

bShowOnBottomOfScreen
bool

If true, the iAd will be shown at the bottom of the screen, top otherwise

ShowInterstitialAd
static void System::ShowInterstitialAd()

Shows the loaded interstitial ad (loaded with LoadInterstitialAd) (Android only)

ShowPlatformSpecificAchievementsScreen
static void System::ShowPlatformSpecificAchievementsScreen(

const 	APlayerController 	SpecificPlayer

)

Displays the built-in achievements GUI (iOS and Android only; this function may be renamed or moved in a future release)

**Parameters**

SpecificPlayer
const APlayerController

Specific player's achievements to show. May not be supported on all platforms. If null, defaults to the player with ControllerId 0

ResetGamepadAssignments
static void System::ResetGamepadAssignments()

Resets the gamepad to player controller id assignments (Android and iOS only)

ResetGamepadAssignmentToController
static void System::ResetGamepadAssignmentToController(
int 	ControllerId
	)

Resets the gamepad assignment to player controller id (Android and iOS only)

SetWindowTitle
static void System::SetWindowTitle(
FText 	Title
	)

Sets the game window title

---

## UTILITIES \| STRING

### LogString

```
static void System::LogString(FString InString = "", bool bPrintToLog = true)
```

Prints a string to the log If Print To Log is true, it will be visible in the Output Log window.  Otherwise it will be logged only as 'Verbose', so it generally won't show up.

**Parameters**

InString
FString

The string to log out

bPrintToLog
bool

Whether or not to print the output to the log

MakeLiteralString
static FString System::MakeLiteralString(
FString 	Value
	)

Creates a literal string

**Parameters**

Value
FString

value to set the string to

**Returns**

The literal string

---

## UTILITIES \| TEXT

### MakeLiteralText

```
static FText System::MakeLiteralText(FText Value)
```

Creates a literal FText

**Parameters**

Value
FText

value to set the FText to

**Returns**

The literal FText

---

## UTILITIES \| TIME

### IsTimerActiveHandle

```
static bool System::IsTimerActiveHandle(FTimerHandle Handle)
```

Returns true if a timer exists and is active for the given handle, false otherwise.

**Parameters**

Handle
FTimerHandle

The handle of the timer to check whether it is active.

**Returns**

True if the timer exists and is active.

IsTimerActive
static bool System::IsTimerActive(
UObject 	Object,
FString 	FunctionName
	)

Returns true if a timer exists and is active for the given delegate, false otherwise.

**Parameters**

Object
UObject

Object that implements the delegate function. Defaults to self (this blueprint)

FunctionName
FString

Delegate function name. Can be a K2 function or a Custom Event.

**Returns**

True if the timer exists and is active.

SetTimerForNextTick
static FTimerHandle System::SetTimerForNextTick(
UObject 	Object,
FString 	FunctionName
	)

Set a timer to execute a delegate on the next tick.

**Parameters**

Object
UObject

Object that implements the delegate function. Defaults to self (this blueprint)

FunctionName
FString

Delegate function name. Can be a K2 function or a Custom Event.

**Returns**

The timer handle to pass to other timer functions to manipulate this timer.

GetTimerRemainingTime
static float32 System::GetTimerRemainingTime(
UObject 	Object,
FString 	FunctionName
	)

Returns time until the timer will next execute its delegate.

**Parameters**

Object
UObject

Object that implements the delegate function. Defaults to self (this blueprint)

FunctionName
FString

Delegate function name. Can be a K2 function or a Custom Event.

**Returns**

How long is remaining in the current iteration of the timer.

TimerExists
static bool System::TimerExists(
UObject 	Object,
FString 	FunctionName
	)

Returns true is a timer for the given delegate exists, false otherwise.

**Parameters**

Object
UObject

Object that implements the delegate function. Defaults to self (this blueprint)

FunctionName
FString

Delegate function name. Can be a K2 function or a Custom Event.

**Returns**

True if the timer exists.

GetGameTimeInSeconds
static float32 System::GetGameTimeInSeconds()

Get the current game time, in seconds. This stops when the game is paused and is affected by slomo.

**Parameters**

WorldContextObject

World context

GetTimerRemainingTimeHandle
static float32 System::GetTimerRemainingTimeHandle(
FTimerHandle 	Handle
	)

Returns time until the timer will next execute its handle.

**Parameters**

Handle
FTimerHandle

The handle of the timer to time remaining of.

**Returns**

How long is remaining in the current iteration of the timer.

GetTimerElapsedTime
static float32 System::GetTimerElapsedTime(
UObject 	Object,
FString 	FunctionName
	)

Returns elapsed time for the given delegate (time since current countdown iteration began).

**Parameters**

Object
UObject

Object that implements the delegate function. Defaults to self (this blueprint)

FunctionName
FString

Delegate function name. Can be a K2 function or a Custom Event.

**Returns**

How long has elapsed since the current iteration of the timer began.

UnPauseTimerHandle
static void System::UnPauseTimerHandle(
FTimerHandle 	Handle
	)

Resumes a paused timer from its current elapsed time.

**Parameters**

Handle
FTimerHandle

The handle of the timer to unpause.

PauseTimerHandle
static void System::PauseTimerHandle(
FTimerHandle 	Handle
	)

Pauses a set timer at its current elapsed time.

**Parameters**

Handle
FTimerHandle

The handle of the timer to pause.

SetTimerForNextTickDelegate
static FTimerHandle System::SetTimerForNextTickDelegate(

FTimerDynamicDelegate 	Delegate	 = 	FTimerDynamicDelegate ( )

)

Set a timer to execute a delegate next tick.

**Returns**

The timer handle to pass to other timer functions to manipulate this timer.

UnPauseTimer
static void System::UnPauseTimer(
UObject 	Object,
FString 	FunctionName
	)

Resumes a paused timer from its current elapsed time.

**Parameters**

Object
UObject

Object that implements the delegate function. Defaults to self (this blueprint)

FunctionName
FString

Delegate function name. Can be a K2 function or a Custom Event.

GetTimerElapsedTimeHandle
static float32 System::GetTimerElapsedTimeHandle(
FTimerHandle 	Handle
	)

Returns elapsed time for the given handle (time since current countdown iteration began).

**Parameters**

Handle
FTimerHandle

The handle of the timer to get the elapsed time of.

**Returns**

How long has elapsed since the current iteration of the timer began.

InvalidateTimerHandle
static FTimerHandle System::InvalidateTimerHandle(
FTimerHandle& 	Handle
	)

Invalidate the supplied TimerHandle and return it.

**Parameters**

Handle
FTimerHandle&

The handle of the timer to invalidate.

**Returns**

Return the invalidated timer handle for convenience.

PauseTimer
static void System::PauseTimer(
UObject 	Object,
FString 	FunctionName
	)

Pauses a set timer at its current elapsed time.

**Parameters**

Object
UObject

Object that implements the delegate function. Defaults to self (this blueprint)

FunctionName
FString

Delegate function name. Can be a K2 function or a Custom Event.

ClearTimer
static void System::ClearTimer(
UObject 	Object,
FString 	FunctionName
	)

Clears a set timer.

**Parameters**

Object
UObject

Object that implements the delegate function. Defaults to self (this blueprint)

FunctionName
FString

Delegate function name. Can be a K2 function or a Custom Event.

IsValidTimerHandle
static bool System::IsValidTimerHandle(
FTimerHandle 	Handle
	)

Returns whether the timer handle is valid. This does not indicate that there is an active timer that this handle references, but rather that it once referenced a valid timer.

**Parameters**

Handle
FTimerHandle

The handle of the timer to check validity of.

**Returns**

Whether the timer handle is valid.

IsTimerPausedHandle
static bool System::IsTimerPausedHandle(
FTimerHandle 	Handle
	)

Returns true if a timer exists and is paused for the given handle, false otherwise.

**Parameters**

Handle
FTimerHandle

The handle of the timer to check whether it is paused.

**Returns**

True if the timer exists and is paused.

ClearAndInvalidateTimerHandle
static void System::ClearAndInvalidateTimerHandle(
FTimerHandle& 	Handle
	)

Clears a set timer.

**Parameters**

Handle
FTimerHandle&

The handle of the timer to clear.

IsTimerPaused
static bool System::IsTimerPaused(
UObject 	Object,
FString 	FunctionName
	)

Returns true if a timer exists and is paused for the given delegate, false otherwise.

**Parameters**

Object
UObject

Object that implements the delegate function. Defaults to self (this blueprint)

FunctionName
FString

Delegate function name. Can be a K2 function or a Custom Event.

**Returns**

True if the timer exists and is paused.

TimerExistsHandle
static bool System::TimerExistsHandle(
FTimerHandle 	Handle
	)

Returns true is a timer for the given handle exists, false otherwise.

**Parameters**

Handle
FTimerHandle

The handle to check whether it exists.

**Returns**

True if the timer exists.

SetTimerDelegate
static FTimerHandle System::SetTimerDelegate(

FTimerDynamicDelegate 	Delegate,
float32 	Time,
bool 	bLooping,
float32 	InitialStartDelay	 = 	0.000000,
float32 	InitialStartDelayVariance	 = 	0.000000

)

Set a timer to execute delegate. Setting an existing timer will reset that timer with updated parameters.

**Parameters**

Time
float32

How long to wait before executing the delegate, in seconds. Setting a timer to <= 0 seconds will clear it if it is set.

bLooping
bool

True to keep executing the delegate every Time seconds, false to execute delegate only once.

InitialStartDelay
float32

Initial delay passed to the timer manager, in seconds.

InitialStartDelayVariance
float32

Use this to add some variance to when the timer starts in lieu of doing a random range on the InitialStartDelay input, in seconds.

**Returns**

The timer handle to pass to other timer functions to manipulate this timer.

SetTimer
static FTimerHandle System::SetTimer(
UObject 	Object,
FName 	FunctionName,
float32 	Time,
bool 	bLooping,
float32 	InitialStartDelay	 = 	0.000000,
float32 	InitialStartDelayVariance	 = 	0.000000
	)

Set a timer to execute delegate. Setting an existing timer will reset that timer with updated parameters.

**Parameters**

Object
UObject

Object that implements the delegate function. Defaults to self (this blueprint)

FunctionName
FName

Delegate function name. Can be a K2 function or a Custom Event.

Time
float32

How long to wait before executing the delegate, in seconds. Setting a timer to <= 0 seconds will clear it if it is set.

bLooping
bool

true to keep executing the delegate every Time seconds, false to execute delegate only once.

InitialStartDelay
float32

Initial delay passed to the timer manager to allow some variance in when the timer starts, in seconds.

InitialStartDelayVariance
float32

Use this to add some variance to when the timer starts in lieu of doing a random range on the InitialStartDelay input, in seconds.

**Returns**

The timer handle to pass to other timer functions to manipulate this timer.

---

## VIEWPORT

### HasMultipleLocalPlayers

```
static bool System::HasMultipleLocalPlayers()
```

Returns whether there are currently multiple local players in the given world

### SetSuppressViewportTransitionMessage

```
static void System::SetSuppressViewportTransitionMessage(bool bState)
```

Sets the state of the transition message rendered by the viewport. (The blue text displayed when the game is paused and so forth.)

**Parameters**

WorldContextObject

World context

STATIC FUNCTIONS
AsyncOverlapByChannel
static FTraceHandle System::AsyncOverlapByChannel(

FVector 	Pos,
FQuat 	Rot,
ECollisionChannel 	TraceChannel,
FCollisionShape 	CollisionShape,
FCollisionQueryParams 	Params	 = 	FCollisionQueryParams :: DefaultQueryParam,
FCollisionResponseParams 	ResponseParam	 = 	FCollisionResponseParams :: DefaultResponseParam,
FScriptOverlapDelegate 	InDelegate	 = 	FScriptOverlapDelegate ( ),
uint 	UserData	 = 	0

)
AsyncSweepByProfile
static FTraceHandle System::AsyncSweepByProfile(

EAsyncTraceType 	InTraceType,
FVector 	Start,
FVector 	End,
FQuat 	Rot,
FName 	ProfileName,
FCollisionShape 	CollisionShape,
FCollisionQueryParams 	Params	 = 	FCollisionQueryParams :: DefaultQueryParam,
FScriptTraceDelegate 	InDelegate	 = 	FScriptTraceDelegate ( ),
uint 	UserData	 = 	0

)
AsyncLineTraceByChannel
static FTraceHandle System::AsyncLineTraceByChannel(

EAsyncTraceType 	InTraceType,
FVector 	Start,
FVector 	End,
ECollisionChannel 	TraceChannel,
FCollisionQueryParams 	Params	 = 	FCollisionQueryParams :: DefaultQueryParam,
FCollisionResponseParams 	ResponseParam	 = 	FCollisionResponseParams :: DefaultResponseParam,
FScriptTraceDelegate 	InDelegate	 = 	FScriptTraceDelegate ( ),
uint 	UserData	 = 	0

)
AsyncLineTraceByObjectType
static FTraceHandle System::AsyncLineTraceByObjectType(

EAsyncTraceType 	InTraceType,
FVector 	Start,
FVector 	End,
FCollisionObjectQueryParams 	ObjectQueryParams,
FCollisionQueryParams 	Params	 = 	FCollisionQueryParams :: DefaultQueryParam,
FScriptTraceDelegate 	InDelegate	 = 	FScriptTraceDelegate ( ),
uint 	UserData	 = 	0

)
IsTraceHandleValid
static bool System::IsTraceHandleValid(
FTraceHandle 	Handle,
bool 	bOverlapTrace
	)
QueryOverlapData
static bool System::QueryOverlapData(
FTraceHandle 	Handle,
FOverlapDatum& 	OutData
	)
QueryTraceData
static bool System::QueryTraceData(
FTraceHandle 	Handle,
FTraceDatum& 	OutData
	)
AsyncOverlapByObjectType
static FTraceHandle System::AsyncOverlapByObjectType(

FVector 	Pos,
FQuat 	Rot,
FCollisionObjectQueryParams 	ObjectQueryParams,
FCollisionShape 	CollisionShape,
FCollisionQueryParams 	Params	 = 	FCollisionQueryParams :: DefaultQueryParam,
FScriptOverlapDelegate 	InDelegate	 = 	FScriptOverlapDelegate ( ),
uint 	UserData	 = 	0

)
AsyncLineTraceByProfile
static FTraceHandle System::AsyncLineTraceByProfile(

EAsyncTraceType 	InTraceType,
FVector 	Start,
FVector 	End,
FName 	ProfileName,
FCollisionQueryParams 	Params	 = 	FCollisionQueryParams :: DefaultQueryParam,
FScriptTraceDelegate 	InDelegate	 = 	FScriptTraceDelegate ( ),
uint 	UserData	 = 	0

)
AsyncSweepByObjectType
static FTraceHandle System::AsyncSweepByObjectType(

EAsyncTraceType 	InTraceType,
FVector 	Start,
FVector 	End,
FQuat 	Rot,
FCollisionObjectQueryParams 	ObjectQueryParams,
FCollisionShape 	CollisionShape,
FCollisionQueryParams 	Params	 = 	FCollisionQueryParams :: DefaultQueryParam,
FScriptTraceDelegate 	InDelegate	 = 	FScriptTraceDelegate ( ),
uint 	UserData	 = 	0

)
AsyncSweepByChannel
static FTraceHandle System::AsyncSweepByChannel(

EAsyncTraceType 	InTraceType,
FVector 	Start,
FVector 	End,
FQuat 	Rot,
ECollisionChannel 	TraceChannel,
FCollisionShape 	CollisionShape,
FCollisionQueryParams 	Params	 = 	FCollisionQueryParams :: DefaultQueryParam,
FCollisionResponseParams 	ResponseParam	 = 	FCollisionResponseParams :: DefaultResponseParam,
FScriptTraceDelegate 	InDelegate	 = 	FScriptTraceDelegate ( ),
uint 	UserData	 = 	0

)
