# UModelingComponentsSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UModelingComponentsSettings

## Description

Settings for the Modeling Components plug-in. These settings are primarily used to configure two things: - Behavior of things like optional Rendering features inside Modeling Tools, eg for edit-preview rendering - Setup of New Mesh Objects emitted by Modeling Tools (eg their default collision settings, etc)

MODELING TOOLS|NEW MESH OBJECTS bEnableRayTracing bool bEnableRayTracing

Enable Raytracing Support for new Mesh Objects created by Modeling Tools, if support is optional (eg DynamicMeshActors)

bEnableCollision bool bEnableCollision

Enable Collision Support for new Mesh Objects created by Modeling Tools

CollisionMode ECollisionTraceFlag CollisionMode

Default Collision Mode set on new Mesh Objects created by Modeling Tools

MODELING TOOLS|RENDERING bEnableRayTracingWhileEditing bool bEnableRayTracingWhileEditing

Enable Realtime Raytracing support for Mesh Editing Tools. This will impact performance of Tools with Real-Time feedback like 3D Sculpting.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UModelingComponentsSettings::StaticClass()
```
