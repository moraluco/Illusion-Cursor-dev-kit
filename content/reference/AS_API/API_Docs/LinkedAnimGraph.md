# LinkedAnimGraph

## Inheritance

LinkedAnimGraph

## Description

LINKED ANIM GRAPH ConvertToLinkedAnimGraphPure static void LinkedAnimGraph::ConvertToLinkedAnimGraphPure(

FAnimNodeReference 	Node, FLinkedAnimGraphReference& 	LinkedAnimGraph, bool& 	Result

)

Get a linked anim graph reference from an anim node reference (pure)

GetLinkedAnimInstance static UAnimInstance LinkedAnimGraph::GetLinkedAnimInstance( FLinkedAnimGraphReference 	Node 	)

Get the linked instance is hosted by this node. If the node does not host an instance then HasLinkedAnimInstance will return false

HasLinkedAnimInstance static bool LinkedAnimGraph::HasLinkedAnimInstance( FLinkedAnimGraphReference 	Node 	)

Returns whether the node hosts an instance (e.g. linked anim graph or layer)

ConvertToLinkedAnimGraph static FLinkedAnimGraphReference LinkedAnimGraph::ConvertToLinkedAnimGraph(

FAnimNodeReference 	Node, EAnimNodeReferenceConversionResult& 	Result

)

Get a linked anim graph reference from an anim node reference
