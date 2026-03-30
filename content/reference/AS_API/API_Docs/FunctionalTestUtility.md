# FunctionalTestUtility

## Inheritance

FunctionalTestUtility

## UTILITIES \| COLLISION

TraceChannelTestUtil

### static UTraceQueryTestResults FunctionalTestUtility::TraceChannelTestUtil

```
static UTraceQueryTestResults FunctionalTestUtility::TraceChannelTestUtil(
```

	FTraceChannelTestBatchOptions 	BatchOptions,

const 	FVector 	Start,

const 	FVector 	End,

	float32 	SphereCapsuleRadius,

	float32 	CapsuleHalfHeight,

	FVector 	BoxHalfSize,

### const 	FRotator 	Orientation,

```
const FRotator Orientation, ETraceTypeQuery TraceChannel, TArray<EObjectTypeQuery> ObjectTypes, FName ProfileName, bool bTraceComplex, TArray<AActor> ActorsToIgnore, bool bIgnoreSelf, EDrawDebugTrace DrawDebugType, FLinearColor TraceColor = FLinearColor(1.000000, 0.000000, 0.000000, 1.000000),
```

	FLinearColor 	TraceHitColor	 = 	FLinearColor ( 0.000000 , 1.000000 , 0.000000 , 1.000000 ),

	float32 	DrawTime	 = 	5.000000

)

Helper function to trace and permute many options at once
