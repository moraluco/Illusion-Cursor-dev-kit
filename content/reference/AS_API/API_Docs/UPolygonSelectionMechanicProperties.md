# UPolygonSelectionMechanicProperties

**Visibility:** public

## Inheritance

UInteractiveToolPropertySet → UPolygonSelectionMechanicProperties → SELECTIONFILTER

## Description

bHitBackFaces bool bHitBackFaces

When false, faces that face away from the camera are ignored in selection and occlusion. Useful for working with inside-out meshes.

bSelectEdges bool bSelectEdges bSelectFaces bool bSelectFaces bSelectEdgeLoops bool bSelectEdgeLoops

When true, will select edge loops. Edge loops are paths along a string of valence-4 vertices.

bSelectEdgeRings bool bSelectEdgeRings

When true, will select rings of edges that are opposite each other across a quad face.

bSelectVertices bool bSelectVertices bEnableMarquee bool bEnableMarquee bMarqueeIgnoreOcclusion bool bMarqueeIgnoreOcclusion

Determines whether vertices should be checked for occlusion in marquee select (Note: marquee select currently only works with edges and vertices)

SELECTIONFILTER|ORTHO VIEWPORT BEHAVIOR bSelectDownRay bool bSelectDownRay

If the closest element is valid, select other elements behind it that are aligned with it.

bIgnoreOcclusion bool bIgnoreOcclusion

Do not check whether the closest element is occluded from the current view.

bPreferProjectedElement bool bPreferProjectedElement

Prefer to select an edge projected to a point rather than the point, or a face projected to an edge rather than the edge.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPolygonSelectionMechanicProperties::StaticClass()
```
