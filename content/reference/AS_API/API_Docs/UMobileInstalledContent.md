# UMobileInstalledContent

**Visibility:** public

## Inheritance

UObject → UMobileInstalledContent → UMobilePendingContent

## Description

MOBILE PATCHING InstalledContentSize const float32 InstalledContentSize

Get the installed content size in megabytes

DiskFreeSpace const float32 DiskFreeSpace

Get the disk free space in megabytes where content is installed

### MOBILE PATCHING

```
MOBILE PATCHING GetInstalledContentSize float32 GetInstalledContentSize()
```

Get the installed content size in megabytes

### Mount

```
bool Mount(int PakOrder, FString MountPoint)
```

Mount installed content

**Parameters**

PakOrder
int

: Content pak priority

MountPoint
FString

: Path to mount the pak at

GetDiskFreeSpace
float32 GetDiskFreeSpace()

Get the disk free space in megabytes where content is installed

STATIC FUNCTIONS
StaticClass
static UClass UMobileInstalledContent::StaticClass()
