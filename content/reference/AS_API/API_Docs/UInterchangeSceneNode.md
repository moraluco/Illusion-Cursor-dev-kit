# UInterchangeSceneNode

**Visibility:** public

## Inheritance

UInterchangeBaseNode → UInterchangeSceneNode

## Description

ns UE

INTERCHANGE | NODE | SCENE SpecializedTypeCount const int SpecializedTypeCount

Specialized type are scene node special type like (Joint or LODGroup).

MaterialDependencyUidsCount const int MaterialDependencyUidsCount

Asset dependencies are the asset on which this node depend.

INTERCHANGE | NODE | SCENE GetSpecializedTypeCount int GetSpecializedTypeCount() const

Specialized type are scene node special type like (Joint or LODGroup).

AddSpecializedType bool AddSpecializedType( FString 	SpecializedType 	) GetCustomAssetInstanceUid bool GetCustomAssetInstanceUid( FString& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomGlobalTransform bool GetCustomGlobalTransform( FTransform& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomLocalTransform bool GetCustomLocalTransform( FTransform& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetMaterialDependencyUid void GetMaterialDependencyUid( int 	Index, FString& 	OutMaterialDependencyUid 	) const GetMaterialDependencyUids void GetMaterialDependencyUids( TArray<FString>& 	OutMaterialDependencyUids 	) const GetMaterialDependencyUidsCount int GetMaterialDependencyUidsCount() const

Asset dependencies are the asset on which this node depend.

GetSpecializedType void GetSpecializedType( int 	Index, FString& 	OutSpecializedType 	) const AddMaterialDependencyUid bool AddMaterialDependencyUid( FString 	MaterialDependencyUid 	) GetSpecializedTypes void GetSpecializedTypes( TArray<FString>& 	OutSpecializedTypes 	) const IsSpecializedTypeContains bool IsSpecializedTypeContains( FString 	SpecializedType 	) const

Return true if this node contains the specialized type parameter.

RemoveMaterialDependencyUid bool RemoveMaterialDependencyUid( FString 	MaterialDependencyUid 	) RemoveSpecializedType bool RemoveSpecializedType( FString 	SpecializedType 	) SetCustomAssetInstanceUid bool SetCustomAssetInstanceUid( FString 	AttributeValue 	)

Tells which asset, if any, a scene node is instantiating

SetCustomGlobalTransform bool SetCustomGlobalTransform( FTransform 	AttributeValue 	) SetCustomLocalTransform bool SetCustomLocalTransform( FTransform 	AttributeValue 	) STATIC FUNCTIONS StaticClass static UClass UInterchangeSceneNode::StaticClass()
