# UEnvQueryTest

**Visibility:** public

## Inheritance

UEnvQueryNode → UEnvQueryTest → UEnvQueryTest_Distance → UEnvQueryTest_Dot → UEnvQueryTest_GameplayTags → UEnvQueryTest_Overlap

## Description

and 5 other children

## FILTER

### FloatValueMax

```
FAIDataProviderFloatValue FloatValueMax
```

Maximum limit (inclusive) of valid values for the raw test value. Higher values will be discarded as invalid.

### MultipleContextFilterOp

```
EEnvTestFilterOperator MultipleContextFilterOp
```

Determines filtering operator when context returns multiple items

### BoolValue

```
FAIDataProviderBoolValue BoolValue
```

Desired boolean value of the test for scoring to occur or filtering test to pass.

### FilterType

```
EEnvTestFilterType FilterType
```

Does this test filter out results that are below a lower limit, above an upper limit, or both?  Or does it just look for a matching value?

### FloatValueMin

```
FAIDataProviderFloatValue FloatValueMin
```

Minimum limit (inclusive) of valid values for the raw test value. Lower values will be discarded as invalid.

---

## SCORE

### MultipleContextScoreOp

```
EEnvTestScoreOperator MultipleContextScoreOp
```

Determines scoring operator when context returns multiple items

### ScoringEquation

```
EEnvTestScoreEquation ScoringEquation
```

The shape of the curve equation to apply to the normalized score before multiplying by factor.

### ScoreClampMin

```
FAIDataProviderFloatValue ScoreClampMin
```

Minimum value to use to normalize the raw test value before applying scoring formula.

### ClampMinType

```
EEnvQueryTestClamping ClampMinType
```

How should the lower bound for normalization of the raw test value before applying the scoring formula be determined?  Should it use the lowest value found (tested), the lower threshold for filtering, or a separate specified normalization minimum?

### ClampMaxType

```
EEnvQueryTestClamping ClampMaxType
```

How should the upper bound for normalization of the raw test value before applying the scoring formula be determined?  Should it use the highest value found (tested), the upper threshold for filtering, or a separate specified normalization maximum?

### NormalizationType

```
EEQSNormalizationType NormalizationType
```

Specifies how to determine value span used to normalize scores

### ReferenceValue

```
FAIDataProviderFloatValue ReferenceValue
```

When specified gets used to normalize test's results in such a way that the closer a value is to ReferenceValue the higher normalized result it will produce. Value farthest from ReferenceValue will be normalized to 0, and all the other values in between will get normalized linearly with the distance to ReferenceValue.

### ScoreClampMax

```
FAIDataProviderFloatValue ScoreClampMax
```

Maximum value to use to normalize the raw test value before applying scoring formula.

### ScoringFactor

```
FAIDataProviderFloatValue ScoringFactor
```

The weight (factor) by which to multiply the normalized score after the scoring equation is applied.

### bDefineReferenceValue

```
bool bDefineReferenceValue
```

When set to true enables usage of ReferenceValue. It's false by default

---

## TEST

### TestPurpose

```
EEnvTestPurpose TestPurpose
```

The purpose of this test.  Should it be used for filtering possible results, scoring them, or both?

### TestComment

```
FString TestComment
```

Optional comment or explanation about what this test is for.  Useful when the purpose of tests may not be clear, especially when there are multiple tests of the same type.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEnvQueryTest::StaticClass()
```
