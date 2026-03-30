# MeshVertexPainterKismet

## Inheritance

MeshVertexPainterKismet → VERTEXPAINT → PaintVerticesSingleColor

## Description

static void MeshVertexPainterKismet::PaintVerticesSingleColor(

UStaticMeshComponent 	StaticMeshComponent, FLinearColor 	FillColor, bool 	bConvertToSRGB	 = 	true

)

Paints vertex colors on a mesh component in a specified color.

RemovePaintedVertices static void MeshVertexPainterKismet::RemovePaintedVertices( UStaticMeshComponent 	StaticMeshComponent 	)

Removes vertex colors on a mesh component

PaintVerticesLerpAlongAxis static void MeshVertexPainterKismet::PaintVerticesLerpAlongAxis(

UStaticMeshComponent 	StaticMeshComponent, FLinearColor 	StartColor, FLinearColor 	EndColor, EVertexPaintAxis 	Axis, bool 	bConvertToSRGB	 = 	true

)

Paints vertex colors on a mesh component lerping from the start to the end color along the specified axis.
