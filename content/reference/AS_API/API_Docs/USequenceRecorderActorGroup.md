# USequenceRecorderActorGroup

**Visibility:** public

## Inheritance

UObject → USequenceRecorderActorGroup

## Description

RECORDING GROUPS SequenceName FString SequenceName

The base name of the sequence to record to. This name will also be used to auto-generate any assets created by this recording.

bSpecifyTargetLevelSequence bool bSpecifyTargetLevelSequence

Whether we should specify the target level sequence or auto-create it

TargetLevelSequence ULevelSequence TargetLevelSequence

The level sequence to record into

bDuplicateTargetLevelSequence bool bDuplicateTargetLevelSequence

Whether we should duplicate the target level sequence and record into the duplicate

bRecordTargetLevelSequenceLength bool bRecordTargetLevelSequenceLength

Whether we should record to the length of the target level sequence

GroupName FName GroupName STATIC FUNCTIONS StaticClass static UClass USequenceRecorderActorGroup::StaticClass()
