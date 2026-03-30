# FInstanceRadialDamageSignature

## Inheritance

FInstanceRadialDamageSignature → FUNCTIONS → IsBound

## Description

bool IsBound() const Clear void Clear() AddUFunction void AddUFunction( const 	UObject 	Object, 	FName 	FunctionName 	) Unbind void Unbind( UObject 	Object, FName 	FunctionName 	) UnbindObject void UnbindObject( UObject 	Object 	) Broadcast void Broadcast( 	TArray<int> 	Instances, 	TArray<float32> 	Damages, 	AController 	InstigatedBy, 	FVector 	Origin, 	float32 	MaxRadius, const 	UDamageType 	DamageType, 	AActor 	DamageCauser 	) const opAssign FInstanceRadialDamageSignature& opAssign( FInstanceRadialDamageSignature 	Other 	)
