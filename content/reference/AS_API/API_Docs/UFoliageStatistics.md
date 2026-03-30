# UFoliageStatistics

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UFoliageStatistics → FOLIAGE → FoliageOverlappingBoxTransforms

## Description

static void UFoliageStatistics::FoliageOverlappingBoxTransforms(

const 	UStaticMesh 	StaticMesh, 	FBox 	Box, 	TArray<FTransform>& 	OutTransforms

)

Get the transform of every instance overlapping the provided FBox

Parameters StaticMesh const UStaticMesh

Mesh to get instances of

Box FBox

Box to use for overlap

OutTransforms TArray<FTransform>&

Array to populate with transforms

FoliageOverlappingSphereCount static int UFoliageStatistics::FoliageOverlappingSphereCount( const 	UStaticMesh 	StaticMesh, 	FVector 	CenterPosition, 	float32 	Radius 	)

Counts how many foliage instances overlap a given sphere

Parameters CenterPosition FVector

The center position of the sphere

Radius float32

The radius of the sphere. return number of foliage instances with their mesh set to Mesh that overlap the sphere

FoliageOverlappingBoxCount static int UFoliageStatistics::FoliageOverlappingBoxCount( const 	UStaticMesh 	StaticMesh, 	FBox 	Box 	)

Gets the number of instances overlapping a provided box

Parameters StaticMesh const UStaticMesh

Mesh to count

Box FBox

Box to overlap

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFoliageStatistics::StaticClass()
```
