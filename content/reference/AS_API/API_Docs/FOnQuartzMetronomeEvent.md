# FOnQuartzMetronomeEvent

## Inheritance

FOnQuartzMetronomeEvent → FUNCTIONS → IsBound

## Description

bool IsBound() const Clear void Clear() AddUFunction void AddUFunction( const 	UObject 	Object, 	FName 	FunctionName 	) Unbind void Unbind( UObject 	Object, FName 	FunctionName 	) UnbindObject void UnbindObject( UObject 	Object 	) Broadcast void Broadcast( FName 	ClockName, EQuartzCommandQuantization 	QuantizationType, int 	NumBars, int 	Beat, float32 	BeatFraction 	) const opAssign FOnQuartzMetronomeEvent& opAssign( FOnQuartzMetronomeEvent 	Other 	)
