# UControlRigSequencerEditorLibrary

**Visibility:** public

## Inheritance

UBlueprintFunctionLibrary → UControlRigSequencerEditorLibrary

## Description

This is a set of helper functions to access various parts of the Sequencer and Control Rig API via Python and Blueprints.

EDITOR SCRIPTING | SEQUENCER TOOLS | CONTROL RIG RenameControlRigControlChannels bool RenameControlRigControlChannels( ULevelSequence 	InSequence, UControlRig 	InControlRig, TArray<FName> 	InOldControlNames, TArray<FName> 	InNewControlNames 	)

Rename the Control Rig Channels in Sequencer to the specified new control names, which should be present on the Control Rig

Parameters InSequence ULevelSequence

Sequence to rename controls

InControlRig UControlRig

ControlRig to rename controls

InOldControlNames TArray<FName>

The name of the old Control Rig Control Channels to change. Will be replaced by the corresponding name in the InNewControlNames array

InNewControlNames TArray<FName>

The name of the new Control Rig Channels

Returns

Return true if the function succeeds, false if it doesn't which can happen if the name arrays don't match in size or any of the new Control Names aren't valid

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UControlRigSequencerEditorLibrary::StaticClass()
```
