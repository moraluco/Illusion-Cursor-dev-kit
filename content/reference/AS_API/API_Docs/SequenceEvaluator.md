# SequenceEvaluator

## Inheritance

SequenceEvaluator

## Description

SEQUENCE EVALUATOR ConvertToSequenceEvaluatorPure static void SequenceEvaluator::ConvertToSequenceEvaluatorPure(

FAnimNodeReference 	Node, FSequenceEvaluatorReference& 	SequenceEvaluator, bool& 	Result

)

Get a sequence evaluator context from an anim node context (pure)

GetAccumulatedTime static float32 SequenceEvaluator::GetAccumulatedTime( FSequenceEvaluatorReference 	SequenceEvaluator 	)

Gets the current accumulated time of the sequence evaluator

GetSequence static UAnimSequenceBase SequenceEvaluator::GetSequence(

## Members

### SequenceEvaluator

```
FSequenceEvaluatorReference SequenceEvaluator
```

)

### Gets the current sequence of the sequence evaluator

```
Gets the current sequence of the sequence evaluator
```

SetExplicitTime

### static FSequenceEvaluatorReference SequenceEvaluator::SetExplicitTime

```
static FSequenceEvaluatorReference SequenceEvaluator::SetExplicitTime(
```

FSequenceEvaluatorReference 	SequenceEvaluator,

### Time

```
float32 Time
```

)

### Set the current accumulated time of the sequence evaluator

```
Set the current accumulated time of the sequence evaluator
```

SetSequence

### static FSequenceEvaluatorReference SequenceEvaluator::SetSequence

```
static FSequenceEvaluatorReference SequenceEvaluator::SetSequence(
```

FSequenceEvaluatorReference 	SequenceEvaluator,

### Sequence

```
UAnimSequenceBase Sequence
```

)

### Set the current sequence of the sequence evaluator

```
Set the current sequence of the sequence evaluator
```

ConvertToSequenceEvaluator

### static FSequenceEvaluatorReference SequenceEvaluator::ConvertToSequenceEvaluator

```
static FSequenceEvaluatorReference SequenceEvaluator::ConvertToSequenceEvaluator(
```

FAnimNodeReference 	Node,

EAnimNodeReferenceConversionResult& 	Result

)

Get a sequence evaluator context from an anim node context
