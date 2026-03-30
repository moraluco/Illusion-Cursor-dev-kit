# Array

## Inheritance

Array

## UTILITIES \| ARRAY

### FilterArray

```
static void Array::FilterArray(TArray<AActor> TargetArray, TSubclassOf<AActor> FilterClass, TArray<AActor>& FilteredArray)
```

*Filter an array based on a Class derived from Actor.  * *

**Parameters**

TargetArray
TArray<AActor>

The array to filter from *

FilterClass
TSubclassOf<AActor>

The Actor sub-class type that acts as the filter, only objects derived from it will be returned. *

**Returns**

An array containing only those objects which are derived from the class specified.
