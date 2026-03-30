# USkeletalMeshLODSettings

**Visibility:** public

## Inheritance

UDataAsset → USkeletalMeshLODSettings → LODGROUPS → DisableBelowMinLodStripping

## Description

FPerPlatformBool DisableBelowMinLodStripping

When true LODs below MinLod will not be stripped during cook.

bOverrideLODStreamingSettings bool bOverrideLODStreamingSettings

Whether meshes in this group override default LOD streaming settings.

bSupportLODStreaming FPerPlatformBool bSupportLODStreaming

Whether meshes in this group stream LODs by default

MaxNumStreamedLODs FPerPlatformInt MaxNumStreamedLODs

Default maximum number of streamed LODs for meshes in this group

MaxNumOptionalLODs FPerPlatformInt MaxNumOptionalLODs

Default maximum number of optional LODs for meshes in this group (currently, need to be either 0 or > num of LODs below MinLod)

LODGroups TArray<FSkeletalMeshLODGroupSettings> LODGroups MinLod FPerPlatformInt MinLod

Minimum LOD to render. Can be overridden per component as well as set here for all mesh instances here

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USkeletalMeshLODSettings::StaticClass()
```
