# SequencePlayer

## Inheritance

SequencePlayer

## Description

SEQUENCE PLAYER GetSequencePure static UAnimSequenceBase SequencePlayer::GetSequencePure( FSequencePlayerReference 	SequencePlayer 	)

Get the current sequence of the sequence player

ConvertToSequencePlayerPure static void SequencePlayer::ConvertToSequencePlayerPure( FAnimNodeReference 	Node, FSequencePlayerReference& 	SequencePlayer, bool& 	Result 	)

Get a sequence player context from an anim node context (pure)

GetAccumulatedTime static float32 SequencePlayer::GetAccumulatedTime( FSequencePlayerReference 	SequencePlayer 	)

Gets the current accumulated time of the sequence player

GetLoopAnimation static bool SequencePlayer::GetLoopAnimation( FSequencePlayerReference 	SequencePlayer 	)

Get the looping state of the sequence player

GetPlayRate static float32 SequencePlayer::GetPlayRate( FSequencePlayerReference 	SequencePlayer 	)

Get the play rate of the sequence player

ConvertToSequencePlayer static FSequencePlayerReference SequencePlayer::ConvertToSequencePlayer(

FAnimNodeReference 	Node, EAnimNodeReferenceConversionResult& 	Result

)

Get a sequence player context from an anim node context

GetStartPosition static float32 SequencePlayer::GetStartPosition( FSequencePlayerReference 	SequencePlayer 	)

Get the start position of the sequence player

SetAccumulatedTime static FSequencePlayerReference SequencePlayer::SetAccumulatedTime(

FSequencePlayerReference 	SequencePlayer, float32 	Time

)

Set the current accumulated time of the sequence player

SetPlayRate static FSequencePlayerReference SequencePlayer::SetPlayRate( FSequencePlayerReference 	SequencePlayer, float32 	PlayRate 	)

Set the play rate of the sequence player

SetSequence static FSequencePlayerReference SequencePlayer::SetSequence( FSequencePlayerReference 	SequencePlayer, UAnimSequenceBase 	Sequence 	)

Set the current sequence of the sequence player

SetStartPosition static FSequencePlayerReference SequencePlayer::SetStartPosition(

FSequencePlayerReference 	SequencePlayer, float32 	StartPosition

)

Set the start position of the sequence player.  If this is called from On Become Relevant or On Initial Update then it should be accompanied by a call to SetAccumulatedTime to achieve the desired effect of resetting the play time of a sequence player.
