# AGeometryCollectionDebugDrawActor

**Visibility:** public

## Inheritance

AActor → AGeometryCollectionDebugDrawActor

## Description

DEBUG DRAW bDebugDrawHierarchy bool bDebugDrawHierarchy

Show debug visualization for the top level node rather than the bottom leaf nodes of a cluster's hierarchy. * Only affects Clustering and Geometry visualization.

bDebugDrawClustering bool bDebugDrawClustering

Show debug visualization for all clustered children associated to the current rigid body id selection.

HideGeometry EGeometryCollectionDebugDrawActorHideGeometry HideGeometry

Geometry visibility setting. Select the part of the geometry to hide in order to better visualize the debug information.

bDebugDrawWholeCollection bool bDebugDrawWholeCollection

Show debug visualization for the rest of the geometry collection related to the current rigid body id selection.

DEBUG DRAW|CLUSTERING bShowParent bool bShowParent

Show a link from the selected rigid body's associated cluster nodes to their parent's nodes.

bShowConnectivityEdges bool bShowConnectivityEdges

Show the connectivity edges for the selected rigid body's associated cluster nodes.

bShowLevel bool bShowLevel

Show the hierarchical level for the selected rigid body's associated cluster nodes.

bShowTransform bool bShowTransform

Show the transform for the selected rigid body's associated cluster nodes.

bShowTransformIndex bool bShowTransformIndex

Show the transform index for the selected rigid body's associated cluster nodes.

DEBUG DRAW|GEOMETRY bShowGeometryIndex bool bShowGeometryIndex

Show the geometry index for the selected rigid body's associated geometries.

bShowBoundingBox bool bShowBoundingBox

Show the bounding box for the selected rigid body's associated geometries.

bShowFaces bool bShowFaces

Show the faces for the selected rigid body's associated geometries.

bShowVertexNormals bool bShowVertexNormals

Show the vertex normals for the selected rigid body's associated geometries.

bShowFaceIndices bool bShowFaceIndices

Show the face indices for the selected rigid body's associated geometries.

bShowVertices bool bShowVertices

Show the vertices for the selected rigid body's associated geometries.

bShowFaceNormals bool bShowFaceNormals

Show the face normals for the selected rigid body's associated geometries.

SingleFaceIndex int SingleFaceIndex

The index of the single face to visualize.

bShowGeometryTransform bool bShowGeometryTransform

Show the geometry transform for the selected rigid body's associated geometries.

bShowVertexIndices bool bShowVertexIndices

Show the vertex indices for the selected rigid body's associated geometries.

bShowSingleFace bool bShowSingleFace

Enable single face visualization for the selected rigid body's associated geometries.

DEBUG DRAW|RIGID BODY bShowRigidBodyVelocity bool bShowRigidBodyVelocity

Show the selected rigid body's linear and angular velocity.

bCollisionAtOrigin bool bCollisionAtOrigin

Show the selected rigid body's collision volume at the origin, in local space.

bShowRigidBodyCollision bool bShowRigidBodyCollision

Show the selected rigid body's collision volume.

bShowRigidBodyId bool bShowRigidBodyId

Display the selected rigid body's id.

bShowRigidBodyTransform bool bShowRigidBodyTransform

Show the selected rigid body's transform.

bShowRigidBodyInertia bool bShowRigidBodyInertia

Show the selected rigid body's inertia tensor box.

bShowRigidBodyForce bool bShowRigidBodyForce

Show the selected rigid body's applied force and torque.

bShowRigidBodyInfos bool bShowRigidBodyInfos

Show the selected rigid body's on screen text information.

DEBUG DRAW|SETTINGS bUseActiveVisualization bool bUseActiveVisualization

Adapt visualization depending of the cluster nodes' hierarchical level.

PointThickness float32 PointThickness

Thickness of points when visualizing vertices.

LineThickness float32 LineThickness

Thickness of lines when visualizing faces, normals, ...etc.

bTextShadow bool bTextShadow

Draw shadows under the displayed text.

TextScale float32 TextScale

Scale of the font used to display text.

NormalScale float32 NormalScale

Scale factor used for visualizing normals.

AxisScale float32 AxisScale

Scale of the axis used for visualizing all transforms.

ArrowScale float32 ArrowScale

Size of arrows used for visualizing normals, breaking information, ...etc.

RigidBodyIdColor FColor RigidBodyIdColor

Color used for the visualization of the rigid body ids.

RigidBodyTransformScale float32 RigidBodyTransformScale

Scale for rigid body transform visualization.

RigidBodyCollisionColor FColor RigidBodyCollisionColor

Color used for collision primitives visualization.

RigidBodyInertiaColor FColor RigidBodyInertiaColor

Color used for the visualization of the rigid body inertia tensor box.

RigidBodyVelocityColor FColor RigidBodyVelocityColor

Color used for rigid body velocities visualization.

RigidBodyForceColor FColor RigidBodyForceColor

Color used for rigid body applied force and torque visualization.

RigidBodyInfoColor FColor RigidBodyInfoColor

Color used for the visualization of the rigid body infos.

TransformIndexColor FColor TransformIndexColor

Color used for the visualization of the transform indices.

TransformScale float32 TransformScale

Scale for cluster transform visualization.

LevelColor FColor LevelColor

Color used for the visualization of the levels.

ParentColor FColor ParentColor

Color used for the visualization of the link from the parents.

ConnectivityEdgeThickness float32 ConnectivityEdgeThickness

Line thickness used for the visualization of the rigid clustering connectivity edges.

GeometryIndexColor FColor GeometryIndexColor

Color used for the visualization of the geometry indices.

GeometryTransformScale float32 GeometryTransformScale

Scale for geometry transform visualization.

BoundingBoxColor FColor BoundingBoxColor

Color used for the visualization of the bounding boxes.

FaceColor FColor FaceColor

Color used for the visualization of the faces.

FaceIndexColor FColor FaceIndexColor

Color used for the visualization of the face indices.

FaceNormalColor FColor FaceNormalColor

Color used for the visualization of the face normals.

SingleFaceColor FColor SingleFaceColor

Color used for the visualization of the single face.

VertexColor FColor VertexColor

Color used for the visualization of the vertices.

VertexIndexColor FColor VertexIndexColor

Color used for the visualization of the vertex indices.

VertexNormalColor FColor VertexNormalColor

Color used for the visualization of the vertex normals.

## Members

### FUNCTIONS

```
STATIC FUNCTIONS
```

Spawn static AGeometryCollectionDebugDrawActor AGeometryCollectionDebugDrawActor::Spawn(

### FVector 	Location	 = 	FVector :: ZeroVector,

```
FVector 	Location	 = 	FVector :: ZeroVector, FRotator 	Rotation	 = 	FRotator :: ZeroRotator, FName 	Name	 = 	NAME_None, ULevel 	Level	 = 	nullptr
```

)

### StaticClass

```
static UClass AGeometryCollectionDebugDrawActor::StaticClass()
```
