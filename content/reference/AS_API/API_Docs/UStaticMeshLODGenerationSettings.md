# UStaticMeshLODGenerationSettings

**Visibility:** public

## Inheritance

UObject → UStaticMeshLODGenerationSettings

## Description

UStaticMeshLODGenerationSettings is intended to be a stored version of the settings used by UGenerateStaticMeshLODProcess (and the associated UGenerateStaticMeshLODAssetTool).  This UObject is exposed as an Asset type in the Editor via UStaticMeshLODGenerationSettingsFactory.

The Tool uses these serialized settings as a 'Preset', ie the user can save a set of configured settings, or load previously-saved settings.

## SETTINGS

### MeshGeneration

```
FGenerateStaticMeshLODProcessSettings MeshGeneration
```
### Simplification

```
FGenerateStaticMeshLODProcess_SimplifySettings Simplification
```
### Normals

```
FGenerateStaticMeshLODProcess_NormalsSettings Normals
```
### TextureBaking

```
FGenerateStaticMeshLODProcess_TextureSettings TextureBaking
```
### UVGeneration

```
FGenerateStaticMeshLODProcess_UVSettings UVGeneration SimpleCollision FGenerateStaticMeshLODProcess_CollisionSettings SimpleCollision Preprocessing FGenerateStaticMeshLODProcess_PreprocessSettings Preprocessing STATIC FUNCTIONS StaticClass static UClass UStaticMeshLODGenerationSettings::StaticClass()
```
