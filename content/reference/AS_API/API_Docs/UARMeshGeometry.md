# UARMeshGeometry

**Visibility:** public

## Inheritance

UARTrackedGeometry → UARMeshGeometry

## Description

AR AUGMENTEDREALITY|CLASSIFICATION GetObjectClassificationAtLocation bool GetObjectClassificationAtLocation(

FVector 	InWorldLocation, EARObjectClassification& 	OutClassification, FVector& 	OutClassificationLocation, float32 	MaxLocationDiff	 = 	10.000000

)

Try to determine the classification of the object at a world space location @InWorldLocation: the world location where the classification is needed @OutClassification: the classification result @OutClassificationLocation: the world location at where the classification is calculated @MaxLocationDiff: the max distance between the specified world location and the classification location

Returns whether a valid classification result is calculated STATIC FUNCTIONS StaticClass static UClass UARMeshGeometry::StaticClass()
