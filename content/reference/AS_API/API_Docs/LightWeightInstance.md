# LightWeightInstance

## Inheritance

LightWeightInstance

## Description

LIGHT WEIGHT INSTANCE CreateNewLightWeightInstance static FActorInstanceHandle LightWeightInstance::CreateNewLightWeightInstance(

UClass 	ActorClass, FTransform 	Transform, UDataLayer 	Layer, UWorld 	World

)

Returns a handle to a new light weight instance that represents an object of type ActorClass

ConvertActorToLightWeightInstance static FActorInstanceHandle LightWeightInstance::ConvertActorToLightWeightInstance( AActor 	Actor 	)

Returns a handle to the light weight representation and destroys Actor if successful; Returns a handle to Actor otherwise
