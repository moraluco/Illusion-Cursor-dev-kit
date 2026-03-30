# APreviewMeshActor

**Visibility:** public

## Inheritance

AInternalToolFrameworkActor → APreviewMeshActor

## Description

UPreviewMesh internally spawns a APreviewMeshActor to hold the preview mesh object.  We use this AInternalToolFrameworkActor subclass so that we can identify such objects at higher levels (for example to prevent them from being deleted in the Editor)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static APreviewMeshActor APreviewMeshActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass APreviewMeshActor::StaticClass

```
static UClass APreviewMeshActor::StaticClass()
```
