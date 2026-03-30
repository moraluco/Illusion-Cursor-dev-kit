# FInstancePointDamageSignature

## Inheritance

FInstancePointDamageSignature → FUNCTIONS → IsBound

## Description

bool IsBound() const Clear void Clear() AddUFunction void AddUFunction( const 	UObject 	Object, 	FName 	FunctionName 	) Unbind void Unbind( UObject 	Object, FName 	FunctionName 	) UnbindObject void UnbindObject( UObject 	Object 	) Broadcast void Broadcast( 	int 	InstanceIndex, 	float32 	Damage, 	AController 	InstigatedBy, 	FVector 	HitLocation, 	FVector 	ShotFromDirection, const 	UDamageType 	DamageType, 	AActor 	DamageCauser 	) const opAssign FInstancePointDamageSignature& opAssign( FInstancePointDamageSignature 	Other 	)
