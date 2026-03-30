# UFieldSystemComponent

**Visibility:** public

## Inheritance

UPrimitiveComponent → UFieldSystemComponent

## Description

FieldSystemComponent

## FIELD

### bIsWorldField

```
bool bIsWorldField
```

If enabled the field will be pushed to the world fields and will be available to materials and niagara

### bIsChaosField

```
bool bIsChaosField
```

If enabled the field will be used by all the chaos solvers

### SupportedSolvers

```
TArray<TSoftObjectPtr<AChaosSolverActor>> SupportedSolvers
```

List of chaos solvers that will use the field

### FieldSystem

```
UFieldSystem FieldSystem
```

Field system asset to be used to store the construction fields. This asset is not required anymore and will be deprecated soon.

---

## FIELD

### ApplyStrainField

```
void ApplyStrainField(bool Enabled, FVector Position, float32 Radius, float32 Magnitude, int Iterations)
```

ApplyExternalStran This function will dispatch a command to the physics thread to apply a strain field on a clustered set of geometry. This is used to trigger a breaking event within the solver.

**Parameters**

Enabled
bool

Is this force enabled for evaluation.

Position
FVector

The origin point of the force

Radius
float32

Radial influence from the position, positions further away are weaker.

Magnitude
float32

The size of the linear force.

Iterations
int

Levels of evaluation into the cluster hierarchy.

AddPersistentField
void AddPersistentField(
bool 	Enabled,
EFieldPhysicsType 	Target,
UFieldSystemMetaData 	MetaData,
UFieldNodeBase 	Field
	)

AddPersistentField This function will dispatch a command to the physics thread to apply a generic evaluation of a user defined field network. This command will be persistent in time and will live until the component is destroyed or until the RemovePersistenFields function is called. See documentation, for examples of how to recreate variations of the above generic fields using field networks

**Parameters**

Enabled
bool

Is this force enabled for evaluation.

Target
EFieldPhysicsType

Type of field supported by the solver.

MetaData
UFieldSystemMetaData

Meta data used to assist in evaluation

Field
UFieldNodeBase

Base evaluation node for the field network.

ApplyLinearForce
void ApplyLinearForce(
bool 	Enabled,
FVector 	Direction,
float32 	Magnitude
	)

ApplyUniformForce This function will dispatch a command to the physics thread to apply a uniform linear force on each particle within the simulation.

**Parameters**

Enabled
bool

Is this force enabled for evaluation.

Direction
FVector

The direction of the linear force

Magnitude
float32

The size of the linear force.

ApplyPhysicsField
void ApplyPhysicsField(
bool 	Enabled,
EFieldPhysicsType 	Target,
UFieldSystemMetaData 	MetaData,
UFieldNodeBase 	Field
	)

AddTransientField This function will dispatch a command to the physics thread to apply a generic evaluation of a user defined transient field network. See documentation, for examples of how to recreate variations of the above generic fields using field networks

**Parameters**

Enabled
bool

Is this force enabled for evaluation.

Target
EFieldPhysicsType

Type of field supported by the solver.

MetaData
UFieldSystemMetaData

Meta data used to assist in evaluation

Field
UFieldNodeBase

Base evaluation node for the field network.

ApplyRadialForce
void ApplyRadialForce(
bool 	Enabled,
FVector 	Position,
float32 	Magnitude
	)

ApplyRadialForce This function will dispatch a command to the physics thread to apply a linear force that points away from a position.

**Parameters**

Enabled
bool

Is this force enabled for evaluation.

Position
FVector

The origin point of the force

Magnitude
float32

The size of the linear force.

ApplyRadialVectorFalloffForce
void ApplyRadialVectorFalloffForce(
bool 	Enabled,
FVector 	Position,
float32 	Radius,
float32 	Magnitude
	)

FalloffRadialForce This function will dispatch a command to the physics thread to apply a linear force from a position in space. The force vector is weaker as it moves away from the center.

**Parameters**

Enabled
bool

Is this force enabled for evaluation.

Position
FVector

The origin point of the force

Radius
float32

Radial influence from the position, positions further away are weaker.

Magnitude
float32

The size of the linear force.

ApplyStayDynamicField
void ApplyStayDynamicField(
bool 	Enabled,
FVector 	Position,
float32 	Radius
	)

SetDynamicState This function will dispatch a command to the physics thread to apply a kinematic to dynamic state change for the particles within the field.

**Parameters**

Enabled
bool

Is this force enabled for evaluation.

Position
FVector

The location of the command

Radius
float32

Radial influence from the position

AddFieldCommand
void AddFieldCommand(
bool 	Enabled,
EFieldPhysicsType 	Target,
UFieldSystemMetaData 	MetaData,
UFieldNodeBase 	Field
	)

AddConstructionField This function will dispatch a command to the physics thread to apply a generic evaluation of a user defined field network. This command will be used in a construction script to setup some particles properties (anchors...). See documentation, for examples of how to recreate variations of the above generic fields using field networks

**Parameters**

Enabled
bool

Is this force enabled for evaluation.

Target
EFieldPhysicsType

Type of field supported by the solver.

MetaData
UFieldSystemMetaData

Meta data used to assist in evaluation

Field
UFieldNodeBase

Base evaluation node for the field network.

ApplyUniformVectorFalloffForce
void ApplyUniformVectorFalloffForce(
bool 	Enabled,
FVector 	Position,
FVector 	Direction,
float32 	Radius,
float32 	Magnitude
	)

FalloffUniformForce This function will dispatch a command to the physics thread to apply a linear force in a uniform direction. The force vector is weaker as it moves away from the center.

**Parameters**

Enabled
bool

Is this force enabled for evaluation.

Position
FVector

The origin point of the force

Direction
FVector

The direction of the linear force

Radius
float32

Radial influence from the position, positions further away are weaker.

Magnitude
float32

The size of the linear force.

RemovePersistentFields
void RemovePersistentFields()

RemovePersistentFields This function will remove all the field component persistent fields from chaos and from the world

ResetFieldSystem
void ResetFieldSystem()

RemoveConstructionFields This function will remove all the field component construction fields from chaos and from the world

STATIC FUNCTIONS
Get
static UFieldSystemComponent UFieldSystemComponent::Get(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
GetOrCreate
static UFieldSystemComponent UFieldSystemComponent::GetOrCreate(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
Create
static UFieldSystemComponent UFieldSystemComponent::Create(
AActor 	Actor,
FName 	WithName	 = 	NAME_None
	)
StaticClass
static UClass UFieldSystemComponent::StaticClass()
