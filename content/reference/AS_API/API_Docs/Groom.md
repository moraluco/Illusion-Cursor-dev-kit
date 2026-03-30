# Groom

## Inheritance

Groom → GROOM → CreateNewGeometryCacheGroomBindingAssetWithPath

## Description

static UGroomBindingAsset Groom::CreateNewGeometryCacheGroomBindingAssetWithPath(

FString 	DesiredPackagePath, UGroomAsset 	GroomAsset, UGeometryCache 	GeometryCache, int 	NumInterpolationPoints	 = 	100, UGeometryCache 	SourceGeometryCacheForTransfer	 = 	nullptr, int 	MatchingSection	 = 	0

)

Create a new groom binding asset within the contents space of the project.

Parameters DesiredPackagePath FString

The package path to use for the groom binding

GroomAsset UGroomAsset

Groom asset for binding

NumInterpolationPoints int

Number of point used for RBF constraint (if used)

CreateNewGroomBindingAsset static UGroomBindingAsset Groom::CreateNewGroomBindingAsset(

UGroomAsset 	InGroomAsset, USkeletalMesh 	InSkeletalMesh, int 	InNumInterpolationPoints	 = 	100, USkeletalMesh 	InSourceSkeletalMeshForTransfer	 = 	nullptr, int 	InMatchingSection	 = 	0

)

Create a new groom binding asset within the contents space of the project. The asset name will be auto generated based on the groom asset name and the skeletal asset name

Parameters InGroomAsset UGroomAsset

Groom asset for binding

InSkeletalMesh USkeletalMesh

Skeletal mesh on which the groom should be bound to

InNumInterpolationPoints int

(Optional) Number of point used for RBF constraint

InSourceSkeletalMeshForTransfer USkeletalMesh

(Optional) Skeletal mesh on which the groom was authored. This should be used only if the skeletal mesh on which the groom is attached to, does not match the rest pose of the groom

CreateNewGroomBindingAssetWithPath static UGroomBindingAsset Groom::CreateNewGroomBindingAssetWithPath(

FString 	InDesiredPackagePath, UGroomAsset 	InGroomAsset, USkeletalMesh 	InSkeletalMesh, int 	InNumInterpolationPoints	 = 	100, USkeletalMesh 	InSourceSkeletalMeshForTransfer	 = 	nullptr, int 	InMatchingSection	 = 	0

)

Create a new groom binding asset within the contents space of the project.

Parameters InDesiredPackagePath FString

The package path to use for the groom binding

InGroomAsset UGroomAsset

Groom asset for binding

InSkeletalMesh USkeletalMesh

Skeletal mesh on which the groom should be bound to

InNumInterpolationPoints int

Number of point used for RBF constraint (if used)

InSourceSkeletalMeshForTransfer USkeletalMesh

Skeletal mesh on which the groom was authored. This should be used only if the skeletal mesh on which the groom is attached to, does not match the rest pose of the groom

CreateNewGeometryCacheGroomBindingAsset static UGroomBindingAsset Groom::CreateNewGeometryCacheGroomBindingAsset(

UGroomAsset 	GroomAsset, UGeometryCache 	GeometryCache, int 	NumInterpolationPoints	 = 	100, UGeometryCache 	SourceGeometryCacheForTransfer	 = 	nullptr, int 	MatchingSection	 = 	0

)

Create a new groom binding asset within the contents space of the project. The asset name will be auto generated based on the groom asset name and the skeletal asset name

Parameters GroomAsset UGroomAsset

Groom asset for binding

NumInterpolationPoints int

(Optional) Number of point used for RBF constraint
