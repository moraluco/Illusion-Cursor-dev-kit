# UInterchangeMeshNode

**Visibility:** public

## Inheritance

UInterchangeBaseNode → UInterchangeMeshNode

## Description

ns UE

INTERCHANGE | NODE | MESH SceneInstanceUidsCount const int SceneInstanceUidsCount

This function allow to retrieve the number of scene node instancing this mesh.

ShapeDependeciesCount const int ShapeDependeciesCount

This function allow to retrieve the number of Shape dependencies for this object.

SkeletonDependeciesCount const int SkeletonDependeciesCount

This function allow to retrieve the number of skeleton dependencies for this object.

MaterialDependeciesCount const int MaterialDependeciesCount

This function allow to retrieve the number of Material dependencies for this object.

INTERCHANGE | NODE | MESH IsSkinnedMesh bool IsSkinnedMesh() const

Return true if this node represent a skinned mesh

GetCustomBoundingBox bool GetCustomBoundingBox( FBox& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomHasSmoothGroup bool GetCustomHasSmoothGroup( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomHasVertexBinormal bool GetCustomHasVertexBinormal( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomHasVertexColor bool GetCustomHasVertexColor( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomHasVertexNormal bool GetCustomHasVertexNormal( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomHasVertexTangent bool GetCustomHasVertexTangent( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomPolygonCount bool GetCustomPolygonCount( int& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomUVCount bool GetCustomUVCount( int& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomVertexCount bool GetCustomVertexCount( int& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetMaterialDependeciesCount int GetMaterialDependeciesCount() const

This function allow to retrieve the number of Material dependencies for this object.

GetMaterialDependencies void GetMaterialDependencies( TArray<FString>& 	OutDependencies 	) const

This function allow to retrieve the Material dependency for this object.

GetMaterialDependency void GetMaterialDependency( int 	Index, FString& 	OutDependency 	) const

This function allow to retrieve one Material dependency for this object.

GetSceneInstanceUid void GetSceneInstanceUid( int 	Index, FString& 	OutDependency 	) const

This function allow to retrieve one Shape dependency for this object.

GetSceneInstanceUids void GetSceneInstanceUids( TArray<FString>& 	OutDependencies 	) const

This function allow to retrieve the Shape dependency for this object.

GetSceneInstanceUidsCount int GetSceneInstanceUidsCount() const

This function allow to retrieve the number of scene node instancing this mesh.

GetShapeDependeciesCount int GetShapeDependeciesCount() const

This function allow to retrieve the number of Shape dependencies for this object.

GetShapeDependencies void GetShapeDependencies( TArray<FString>& 	OutDependencies 	) const

This function allow to retrieve the Shape dependency for this object.

GetShapeDependency void GetShapeDependency( int 	Index, FString& 	OutDependency 	) const

This function allow to retrieve one Shape dependency for this object.

GetSkeletonDependeciesCount int GetSkeletonDependeciesCount() const

This function allow to retrieve the number of skeleton dependencies for this object.

GetSkeletonDependencies void GetSkeletonDependencies( TArray<FString>& 	OutDependencies 	) const

This function allow to retrieve the skeleton dependency for this object.

GetSkeletonDependency void GetSkeletonDependency( int 	Index, FString& 	OutDependency 	) const

This function allow to retrieve one skeleton dependency for this object.

IsBlendShape bool IsBlendShape() const

Return true if this node represent a skinned mesh

GetBlendShapeName bool GetBlendShapeName( FString& 	OutBlendShapeName 	) const

Return true if we successfully query the BlendShapeName attribute

RemoveMaterialDependencyUid bool RemoveMaterialDependencyUid( FString 	DependencyUid 	)

Remove one Material dependency from this object.

RemoveSceneInstanceUid bool RemoveSceneInstanceUid( FString 	DependencyUid 	)

Remove one Shape dependency from this object.

RemoveShapeDependencyUid bool RemoveShapeDependencyUid( FString 	DependencyUid 	)

Remove one Shape dependency from this object.

RemoveSkeletonDependencyUid bool RemoveSkeletonDependencyUid( FString 	DependencyUid 	)

Remove one skeleton dependency from this object.

SetBlendShape bool SetBlendShape( bool 	bIsBlendShape 	)

Set the IsBlendShape attribute to determine if this node represent a blend shape.

SetBlendShapeName bool SetBlendShapeName( FString 	BlendShapeName 	)

Set the BlendShapeName attribute to determine if this node represent a blend shape.

SetCustomBoundingBox bool SetCustomBoundingBox( FBox 	AttributeValue 	) SetCustomHasSmoothGroup bool SetCustomHasSmoothGroup( const 	bool& 	AttributeValue 	) SetCustomHasVertexBinormal bool SetCustomHasVertexBinormal( const 	bool& 	AttributeValue 	) SetCustomHasVertexColor bool SetCustomHasVertexColor( const 	bool& 	AttributeValue 	) SetCustomHasVertexNormal bool SetCustomHasVertexNormal( const 	bool& 	AttributeValue 	) SetCustomHasVertexTangent bool SetCustomHasVertexTangent( const 	bool& 	AttributeValue 	) SetCustomPolygonCount bool SetCustomPolygonCount( const 	int& 	AttributeValue 	) SetCustomUVCount bool SetCustomUVCount( const 	int& 	AttributeValue 	) SetCustomVertexCount bool SetCustomVertexCount( const 	int& 	AttributeValue 	) SetMaterialDependencyUid bool SetMaterialDependencyUid( FString 	DependencyUid 	)

Add one Material dependency to this object.

SetPayLoadKey void SetPayLoadKey( FString 	PayloadKey 	) SetSceneInstanceUid bool SetSceneInstanceUid( FString 	DependencyUid 	)

Add one Shape dependency to this object.

SetShapeDependencyUid bool SetShapeDependencyUid( FString 	DependencyUid 	)

Add one Shape dependency to this object.

SetSkeletonDependencyUid bool SetSkeletonDependencyUid( FString 	DependencyUid 	)

Add one skeleton dependency to this object.

SetSkinnedMesh bool SetSkinnedMesh( bool 	bIsSkinnedMesh 	)

Set the IsSkinnedMesh attribute to determine if this node represent a skinned mesh.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInterchangeMeshNode::StaticClass()
```
