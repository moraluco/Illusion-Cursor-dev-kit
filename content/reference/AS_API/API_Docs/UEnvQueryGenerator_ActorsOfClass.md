# UEnvQueryGenerator_ActorsOfClass

**Visibility:** public

## Inheritance

UEnvQueryGenerator → UEnvQueryGenerator_ActorsOfClass → GENERATOR → GenerateOnlyActorsInRadius

## Description

FAIDataProviderBoolValue GenerateOnlyActorsInRadius

If true, this will only returns actors of the specified class within the SearchRadius of the SearchCenter context.  If false, it will return ALL actors of the specified class in the world.

SearchRadius FAIDataProviderFloatValue SearchRadius

Max distance of path between point and context.  NOTE: Zero and negative values will never return any results if UseRadius is true.  "Within" requires Distance < Radius.  Actors ON the circle (Distance == Radius) are excluded.

SearchCenter TSubclassOf<UEnvQueryContext> SearchCenter

context

SearchedActorClass TSubclassOf<AActor> SearchedActorClass STATIC FUNCTIONS StaticClass static UClass UEnvQueryGenerator_ActorsOfClass::StaticClass()
