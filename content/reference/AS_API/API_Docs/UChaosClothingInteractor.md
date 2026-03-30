# UChaosClothingInteractor

**Visibility:** public

## Inheritance

UClothingInteractor → UChaosClothingInteractor → CLOTHINGSIMULATION → SetGravity

## Description

void SetGravity( float32 	GravityScale	 = 	1.000000, bool 	bIsGravityOverridden	 = 	false, FVector 	GravityOverride	 = 	FVector ( 0.000000 , 0.000000 , - 981.000000 ) 	) SetAerodynamics void SetAerodynamics( float32 	DragCoefficient	 = 	0.070000, float32 	LiftCoefficient	 = 	0.035000, FVector 	WindVelocity	 = 	FVector ( 0.000000 , 0.000000 , 0.000000 ) 	)

Deprecated. This function cannot set different Low and High values for the Drag and Lift weight maps. Use SetWind instead.

SetAnimDrive void SetAnimDrive( FVector2D 	AnimDriveStiffness	 = 	FVector2D ( 0.000000 , 1.000000 ), FVector2D 	AnimDriveDamping	 = 	FVector2D ( 0.000000 , 1.000000 ) 	) SetAnimDriveLinear void SetAnimDriveLinear( float32 	AnimDriveStiffness	 = 	0.000000 	) SetBackstop void SetBackstop( bool 	bEnabled	 = 	true 	) SetCollision void SetCollision( float32 	CollisionThickness	 = 	1.000000, float32 	FrictionCoefficient	 = 	0.800000, bool 	bUseCCD	 = 	false, float32 	SelfCollisionThickness	 = 	2.000000 	) SetDamping void SetDamping( float32 	DampingCoefficient	 = 	0.010000 	) ResetAndTeleport void ResetAndTeleport( bool 	bReset	 = 	false, bool 	bTeleport	 = 	false 	) SetLongRangeAttachment void SetLongRangeAttachment( FVector2D 	TetherStiffness	 = 	FVector2D ( 1.000000 , 1.000000 ), FVector2D 	TetherScale	 = 	FVector2D ( 1.000000 , 1.000000 ) 	) SetLongRangeAttachmentLinear void SetLongRangeAttachmentLinear( float32 	TetherStiffness	 = 	1.000000, float32 	TetherScale	 = 	1.000000 	) SetMaterial void SetMaterial( FVector2D 	EdgeStiffness	 = 	FVector2D ( 1.000000 , 1.000000 ), FVector2D 	BendingStiffness	 = 	FVector2D ( 1.000000 , 1.000000 ), FVector2D 	AreaStiffness	 = 	FVector2D ( 1.000000 , 1.000000 ) 	) SetMaterialLinear void SetMaterialLinear( float32 	EdgeStiffness	 = 	1.000000, float32 	BendingStiffness	 = 	1.000000, float32 	AreaStiffness	 = 	1.000000 	) SetVelocityScale void SetVelocityScale( FVector 	LinearVelocityScale	 = 	FVector ( 0.750000 , 0.750000 , 0.750000 ), float32 	AngularVelocityScale	 = 	0.750000, float32 	FictitiousAngularScale	 = 	1.000000 	) SetWind void SetWind( FVector2D 	Drag	 = 	FVector2D ( 0.070000 , 0.500000 ), FVector2D 	Lift	 = 	FVector2D ( 0.070000 , 0.500000 ), float32 	AirDensity	 = 	0.000001, FVector 	WindVelocity	 = 	FVector ( 0.000000 , 0.000000 , 0.000000 ) 	) STATIC FUNCTIONS StaticClass static UClass UChaosClothingInteractor::StaticClass()
