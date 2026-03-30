# SubobjectData

## Inheritance

SubobjectData

## Description

SUBOBJECT DATA IsChildActor static bool SubobjectData::IsChildActor( FSubobjectData 	Data 	) CanDelete static bool SubobjectData::CanDelete( FSubobjectData 	Data 	) Returns

Whether or not this object represents a subobject that can be deleted

CanDuplicate static bool SubobjectData::CanDuplicate( FSubobjectData 	Data 	) Returns

Whether or not this object represents a subobject that can be duplicated

CanEdit static bool SubobjectData::CanEdit( FSubobjectData 	Data 	) Returns

Whether or not we can edit properties for this subobject

CanRename static bool SubobjectData::CanRename( FSubobjectData 	Data 	) CanReparent static bool SubobjectData::CanReparent( FSubobjectData 	Data 	) Returns

Whether or not this object represents a subobject that can be reparented to other subobjects based on its context.

GetData static void SubobjectData::GetData( FSubobjectDataHandle 	DataHandle, FSubobjectData& 	OutData 	) GetHandle static void SubobjectData::GetHandle( FSubobjectData 	Data, FSubobjectDataHandle& 	OutHandle 	) Returns

Get the handle for this subobject data

GetObject static const UObject SubobjectData::GetObject( FSubobjectData 	Data, bool 	bEvenIfPendingKill	 = 	false 	) GetVariableName static FName SubobjectData::GetVariableName( FSubobjectData 	Data 	) IsActor static bool SubobjectData::IsActor( FSubobjectData 	Data 	) IsAttachedTo static bool SubobjectData::IsAttachedTo( FSubobjectData 	Data, FSubobjectDataHandle 	InHandle 	) CanCopy static bool SubobjectData::CanCopy( FSubobjectData 	Data 	) Returns

Whether or not this object represents a subobject that can be copied

IsComponent static bool SubobjectData::IsComponent( FSubobjectData 	Data 	)

Returns true if this subobject is a component.

IsDefaultSceneRoot static bool SubobjectData::IsDefaultSceneRoot( FSubobjectData 	Data 	) IsHandleValid static bool SubobjectData::IsHandleValid( FSubobjectDataHandle 	DataHandle 	) IsInheritedComponent static bool SubobjectData::IsInheritedComponent( FSubobjectData 	Data 	) IsInstancedActor static bool SubobjectData::IsInstancedActor( FSubobjectData 	Data 	) IsInstancedComponent static bool SubobjectData::IsInstancedComponent( FSubobjectData 	Data 	) IsNativeComponent static bool SubobjectData::IsNativeComponent( FSubobjectData 	Data 	) IsRootActor static bool SubobjectData::IsRootActor( FSubobjectData 	Data 	) IsRootComponent static bool SubobjectData::IsRootComponent( FSubobjectData 	Data 	) IsSceneComponent static bool SubobjectData::IsSceneComponent( FSubobjectData 	Data 	) IsValid static bool SubobjectData::IsValid( FSubobjectData 	Data 	)
