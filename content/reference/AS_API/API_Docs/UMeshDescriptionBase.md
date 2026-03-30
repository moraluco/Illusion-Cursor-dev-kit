# UMeshDescriptionBase

**Visibility:** public

## Inheritance

UObject → UMeshDescriptionBase → UStaticMeshDescription → MESHDESCRIPTION → PolygonCount

## Description

const int PolygonCount

Returns the number of polygons

PolygonGroupCount const int PolygonGroupCount

Returns the number of polygon groups

TriangleCount const int TriangleCount

Returns the number of triangles

VertexCount const int VertexCount

Returns the number of vertices

VertexInstanceCount const int VertexInstanceCount

Returns the number of vertex instances

EdgeCount const int EdgeCount

Returns the number of edges

## MESHDESCRIPTION

### GetPolygonVertices

```
void GetPolygonVertices(FPolygonID PolygonID, TArray<FVertexID>& OutVertexIDs)const
```

Returns the vertices which form the polygon perimeter

### CreateEdge

```
FEdgeID CreateEdge(FVertexID VertexID0, FVertexID VertexID1)
```

Adds a new edge to the mesh and returns its ID

### CreateEdgeWithID

```
void CreateEdgeWithID(FEdgeID EdgeID, FVertexID VertexID0, FVertexID VertexID1)
```

Adds a new edge to the mesh with the given ID

### CreatePolygon

```
FPolygonID CreatePolygon(FPolygonGroupID PolygonGroupID, TArray<FVertexInstanceID>& VertexInstanceIDs, TArray<FEdgeID>& NewEdgeIDs)
```

Adds a new polygon to the mesh and returns its ID. This will also make any missing edges, and all constituent triangles.

### CreatePolygonGroup

```
FPolygonGroupID CreatePolygonGroup()
```

Adds a new polygon group to the mesh and returns its ID

### CreatePolygonGroupWithID

```
void CreatePolygonGroupWithID(FPolygonGroupID PolygonGroupID)
```

Adds a new polygon group to the mesh with the given ID

### CreatePolygonWithID

```
void CreatePolygonWithID(FPolygonID PolygonID, FPolygonGroupID PolygonGroupID, TArray<FVertexInstanceID>& VertexInstanceIDs, TArray<FEdgeID>& NewEdgeIDs)
```

Adds a new polygon to the mesh with the given ID. This will also make any missing edges, and all constituent triangles.

### CreateTriangle

```
FTriangleID CreateTriangle(FPolygonGroupID PolygonGroupID, TArray<FVertexInstanceID> VertexInstanceIDs, TArray<FEdgeID>& NewEdgeIDs)
```

Adds a new triangle to the mesh and returns its ID. This will also make an encapsulating polygon, and any missing edges.

### CreateTriangleWithID

```
void CreateTriangleWithID(FTriangleID TriangleID, FPolygonGroupID PolygonGroupID, TArray<FVertexInstanceID> VertexInstanceIDs, TArray<FEdgeID>& NewEdgeIDs)
```

Adds a new triangle to the mesh with the given ID. This will also make an encapsulating polygon, and any missing edges.

### CreateVertex

```
FVertexID CreateVertex()
```

Adds a new vertex to the mesh and returns its ID

### CreateVertexInstance

```
FVertexInstanceID CreateVertexInstance(FVertexID VertexID)
```

Adds a new vertex instance to the mesh and returns its ID

### CreateVertexInstanceWithID

```
void CreateVertexInstanceWithID(FVertexInstanceID VertexInstanceID, FVertexID VertexID)
```

Adds a new vertex instance to the mesh with the given ID

### CreateVertexWithID

```
void CreateVertexWithID(FVertexID VertexID)
```

Adds a new vertex to the mesh with the given ID

### DeleteEdge

```
void DeleteEdge(FEdgeID EdgeID, TArray<FVertexID>& OrphanedVertices)
```

Deletes an edge from a mesh

### DeletePolygon

```
void DeletePolygon(FPolygonID PolygonID, TArray<FEdgeID>& OrphanedEdges, TArray<FVertexInstanceID>& OrphanedVertexInstances, TArray<FPolygonGroupID>& OrphanedPolygonGroups)
```

Deletes a polygon from the mesh

### DeletePolygonGroup

```
void DeletePolygonGroup(FPolygonGroupID PolygonGroupID)
```

Deletes a polygon group from the mesh

### DeleteTriangle

```
void DeleteTriangle(FTriangleID TriangleID, TArray<FEdgeID>& OrphanedEdges, TArray<FVertexInstanceID>& OrphanedVertexInstances, TArray<FPolygonGroupID>& OrphanedPolygonGroupsPtr)
```

Deletes a triangle from the mesh

### DeleteVertex

```
void DeleteVertex(FVertexID VertexID)
```

Deletes a vertex from the mesh

### DeleteVertexInstance

```
void DeleteVertexInstance(FVertexInstanceID VertexInstanceID, TArray<FVertexID>& OrphanedVertices)
```

Deletes a vertex instance from a mesh

### Empty

```
void Empty()
```

Empty the mesh description

### GetEdgeConnectedPolygons

```
void GetEdgeConnectedPolygons(FEdgeID EdgeID, TArray<FPolygonID>& OutConnectedPolygonIDs)const
```

Returns the polygons connected to this edge

### GetEdgeConnectedTriangles

```
void GetEdgeConnectedTriangles(FEdgeID EdgeID, TArray<FTriangleID>& OutConnectedTriangleIDs)const
```

Returns reference to an array of triangle IDs connected to this edge

### GetEdgeCount

```
int GetEdgeCount()const
```

Returns the number of edges

### GetEdgeVertex

```
FVertexID GetEdgeVertex(FEdgeID EdgeID, int VertexNumber)const
```

Returns the vertex ID corresponding to one of the edge endpoints

### GetEdgeVertices

```
void GetEdgeVertices(const FEdgeID EdgeID, TArray<FVertexID>& OutVertexIDs)const
```

Returns a pair of vertex IDs defining the edge

### GetNumEdgeConnectedPolygons

```
int GetNumEdgeConnectedPolygons(FEdgeID EdgeID)const
```

Returns the number of polygons connected to this edge

### GetNumEdgeConnectedTriangles

```
int GetNumEdgeConnectedTriangles(FEdgeID EdgeID)const
```

Returns the number of triangles connected to this edge

### GetNumPolygonGroupPolygons

```
int GetNumPolygonGroupPolygons(FPolygonGroupID PolygonGroupID)const
```

Returns the number of polygons in this polygon group

### GetNumPolygonInternalEdges

```
int GetNumPolygonInternalEdges(FPolygonID PolygonID)const
```

Return the number of internal edges in this polygon

### GetNumPolygonTriangles

```
int GetNumPolygonTriangles(FPolygonID PolygonID)const
```

Return the number of triangles which comprise this polygon

### GetNumPolygonVertices

```
int GetNumPolygonVertices(FPolygonID PolygonID)const
```

Returns the number of vertices this polygon has

### GetNumVertexConnectedEdges

```
int GetNumVertexConnectedEdges(FVertexID VertexID)const
```

Returns number of edges connected to this vertex

### GetNumVertexConnectedPolygons

```
int GetNumVertexConnectedPolygons(FVertexID VertexID)const
```

Returns the number of polygons connected to this vertex

### GetNumVertexConnectedTriangles

```
int GetNumVertexConnectedTriangles(FVertexID VertexID)const
```

Returns number of triangles connected to this vertex

### GetNumVertexInstanceConnectedPolygons

```
int GetNumVertexInstanceConnectedPolygons(FVertexInstanceID VertexInstanceID)const
```

Returns the number of polygons connected to this vertex instance.

### GetNumVertexInstanceConnectedTriangles

```
int GetNumVertexInstanceConnectedTriangles(FVertexInstanceID VertexInstanceID)const
```

Returns the number of triangles connected to this vertex instance

### GetNumVertexVertexInstances

```
int GetNumVertexVertexInstances(FVertexID VertexID)const
```

Returns number of vertex instances created from this vertex

### GetPolygonAdjacentPolygons

```
void GetPolygonAdjacentPolygons(FPolygonID PolygonID, TArray<FPolygonID>& OutPolygonIDs)const
```

Populates the passed array with adjacent polygons

### GetPolygonCount

```
int GetPolygonCount()const
```

Returns the number of polygons

### GetPolygonGroupCount

```
int GetPolygonGroupCount()const
```

Returns the number of polygon groups

### GetPolygonGroupPolygons

```
void GetPolygonGroupPolygons(FPolygonGroupID PolygonGroupID, TArray<FPolygonID>& OutPolygonIDs)const
```

Returns the polygons associated with the given polygon group

### GetPolygonInternalEdges

```
void GetPolygonInternalEdges(FPolygonID PolygonID, TArray<FEdgeID>& OutEdgeIDs)const
```

Populate the provided array with a list of edges which are internal to the polygon, i.e. those which separate constituent triangles.

### GetPolygonPerimeterEdges

```
void GetPolygonPerimeterEdges(FPolygonID PolygonID, TArray<FEdgeID>& OutEdgeIDs)const
```

Returns the edges which form the polygon perimeter

### GetPolygonPolygonGroup

```
FPolygonGroupID GetPolygonPolygonGroup(FPolygonID PolygonID)const
```

Return the polygon group associated with a polygon

### GetPolygonTriangles

```
void GetPolygonTriangles(FPolygonID PolygonID, TArray<FTriangleID>& OutTriangleIDs)const
```

Return reference to an array of triangle IDs which comprise this polygon

### GetPolygonVertexInstances

```
void GetPolygonVertexInstances(FPolygonID PolygonID, TArray<FVertexInstanceID>& OutVertexInstanceIDs)const
```

Returns reference to an array of VertexInstance IDs forming the perimeter of this polygon

### ComputePolygonTriangulation

```
void ComputePolygonTriangulation(FPolygonID PolygonID)
```

Generates triangles and internal edges for the given polygon

### GetTriangleAdjacentTriangles

```
void GetTriangleAdjacentTriangles(FTriangleID TriangleID, TArray<FTriangleID>& OutTriangleIDs)const
```

Returns the adjacent triangles to this triangle

### GetTriangleCount

```
int GetTriangleCount()const
```

Returns the number of triangles

### GetTriangleEdges

```
void GetTriangleEdges(FTriangleID TriangleID, TArray<FEdgeID>& OutEdgeIDs)const
```

Returns the edges which define this triangle

### GetTrianglePolygon

```
FPolygonID GetTrianglePolygon(FTriangleID TriangleID)const
```

Get the polygon which contains this triangle

### GetTrianglePolygonGroup

```
FPolygonGroupID GetTrianglePolygonGroup(FTriangleID TriangleID)const
```

Get the polygon group which contains this triangle

### GetTriangleVertexInstance

```
FVertexInstanceID GetTriangleVertexInstance(FTriangleID TriangleID, int Index)const
```

Get the specified vertex instance by index

### GetTriangleVertexInstances

```
void GetTriangleVertexInstances(FTriangleID TriangleID, TArray<FVertexInstanceID>& OutVertexInstanceIDs)const
```

Get the vertex instances which define this triangle

### GetTriangleVertices

```
void GetTriangleVertices(FTriangleID TriangleID, TArray<FVertexID>& OutVertexIDs)const
```

Returns the vertices which define this triangle

### GetVertexAdjacentVertices

```
void GetVertexAdjacentVertices(FVertexID VertexID, TArray<FVertexID>& OutAdjacentVertexIDs)const
```

Returns the vertices adjacent to this vertex

### GetVertexConnectedEdges

```
void GetVertexConnectedEdges(FVertexID VertexID, TArray<FEdgeID>& OutEdgeIDs)const
```

Returns reference to an array of Edge IDs connected to this vertex

### GetVertexConnectedPolygons

```
void GetVertexConnectedPolygons(FVertexID VertexID, TArray<FPolygonID>& OutConnectedPolygonIDs)const
```

Returns the polygons connected to this vertex

### GetVertexConnectedTriangles

```
void GetVertexConnectedTriangles(FVertexID VertexID, TArray<FTriangleID>& OutConnectedTriangleIDs)const
```

Returns the triangles connected to this vertex

### GetVertexCount

```
int GetVertexCount()const
```

Returns the number of vertices

### GetVertexInstanceConnectedPolygons

```
void GetVertexInstanceConnectedPolygons(FVertexInstanceID VertexInstanceID, TArray<FPolygonID>& OutConnectedPolygonIDs)const
```

Returns the polygons connected to this vertex instance

### GetVertexInstanceConnectedTriangles

```
void GetVertexInstanceConnectedTriangles(FVertexInstanceID VertexInstanceID, TArray<FTriangleID>& OutConnectedTriangleIDs)const
```

Returns reference to an array of Triangle IDs connected to this vertex instance

### GetVertexInstanceCount

```
int GetVertexInstanceCount()const
```

Returns the number of vertex instances

### GetVertexInstanceForPolygonVertex

```
FVertexInstanceID GetVertexInstanceForPolygonVertex(FPolygonID PolygonID, FVertexID VertexID)const
```

Return the vertex instance which corresponds to the given vertex on the given polygon, or INDEX_NONE

### GetVertexInstanceForTriangleVertex

```
FVertexInstanceID GetVertexInstanceForTriangleVertex(FTriangleID TriangleID, FVertexID VertexID)const
```

Return the vertex instance which corresponds to the given vertex on the given triangle, or INDEX_NONE

### GetVertexInstancePairEdge

```
FEdgeID GetVertexInstancePairEdge(FVertexInstanceID VertexInstanceID0, FVertexInstanceID VertexInstanceID1)const
```

Returns the edge ID defined by the two given vertex instance IDs, if there is one; otherwise INDEX_NONE

### GetVertexInstanceVertex

```
FVertexID GetVertexInstanceVertex(FVertexInstanceID VertexInstanceID)const
```

Returns the vertex ID associated with the given vertex instance

### GetVertexPairEdge

```
FEdgeID GetVertexPairEdge(FVertexID VertexID0, FVertexID VertexID1)const
```

Returns the edge ID defined by the two given vertex IDs, if there is one; otherwise INDEX_NONE

### GetVertexPosition

```
FVector GetVertexPosition(FVertexID VertexID)const
```

Gets a vertex position

### GetVertexVertexInstances

```
void GetVertexVertexInstances(FVertexID VertexID, TArray<FVertexInstanceID>& OutVertexInstanceIDs)const
```

Returns reference to an array of VertexInstance IDs instanced from this vertex

### IsEdgeInternal

```
bool IsEdgeInternal(FEdgeID EdgeID)const
```

Determine whether a given edge is an internal edge between triangles of a polygon

### IsEdgeInternalToPolygon

```
bool IsEdgeInternalToPolygon(FEdgeID EdgeID, FPolygonID PolygonID)const
```

Determine whether a given edge is an internal edge between triangles of a specific polygon

### IsEdgeValid

```
bool IsEdgeValid(FEdgeID EdgeID)const
```

Returns whether the passed edge ID is valid

### IsEmpty

```
bool IsEmpty()const
```

Return whether the mesh description is empty

### IsPolygonGroupValid

```
bool IsPolygonGroupValid(FPolygonGroupID PolygonGroupID)const
```

Returns whether the passed polygon group ID is valid

### IsPolygonValid

```
bool IsPolygonValid(FPolygonID PolygonID)const
```

Returns whether the passed polygon ID is valid

### IsTrianglePartOfNgon

```
bool IsTrianglePartOfNgon(FTriangleID TriangleID)const
```

Determines if this triangle is part of an n-gon

### IsTriangleValid

```
bool IsTriangleValid(const FTriangleID TriangleID)const
```

Returns whether the passed triangle ID is valid

### IsVertexInstanceValid

```
bool IsVertexInstanceValid(FVertexInstanceID VertexInstanceID)const
```

Returns whether the passed vertex instance ID is valid

### IsVertexOrphaned

```
bool IsVertexOrphaned(FVertexID VertexID)const
```

Returns whether a given vertex is orphaned, i.e. it doesn't form part of any polygon

### IsVertexValid

```
bool IsVertexValid(FVertexID VertexID)const
```

Returns whether the passed vertex ID is valid

### ReserveNewEdges

```
void ReserveNewEdges(int NumberOfNewEdges)
```

Reserves space for this number of new edges

### ReserveNewPolygonGroups

```
void ReserveNewPolygonGroups(int NumberOfNewPolygonGroups)
```

Reserves space for this number of new polygon groups

### ReserveNewPolygons

```
void ReserveNewPolygons(int NumberOfNewPolygons)
```

Reserves space for this number of new polygons

### ReserveNewTriangles

```
void ReserveNewTriangles(int NumberOfNewTriangles)
```

Reserves space for this number of new triangles

### ReserveNewVertexInstances

```
void ReserveNewVertexInstances(int NumberOfNewVertexInstances)
```

Reserves space for this number of new vertex instances

### ReserveNewVertices

```
void ReserveNewVertices(int NumberOfNewVertices)
```

Reserves space for this number of new vertices

### ReversePolygonFacing

```
void ReversePolygonFacing(FPolygonID PolygonID)
```

Reverse the winding order of the vertices of this polygon

### SetPolygonPolygonGroup

```
void SetPolygonPolygonGroup(FPolygonID PolygonID, FPolygonGroupID PolygonGroupID)
```

Sets the polygon group associated with a polygon

### SetPolygonVertexInstances

```
void SetPolygonVertexInstances(FPolygonID PolygonID, TArray<FVertexInstanceID> VertexInstanceIDs)
```

Set the vertex instance at the given index around the polygon to the new value

### SetVertexPosition

```
void SetVertexPosition(FVertexID VertexID, FVector Position)
```

Sets a vertex position

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMeshDescriptionBase::StaticClass()
```
