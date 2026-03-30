# UMobilePendingContent

**Visibility:** public

## Inheritance

UMobileInstalledContent → UMobilePendingContent

## Description

MOBILE PATCHING RequiredDiskSpace const float32 RequiredDiskSpace

Get the required disk space in megabytes for this content installation

DownloadSize const float32 DownloadSize

Get the total download size for this content installation

MOBILE PATCHING|PROGRESS InstallProgress const float32 InstallProgress

Get the current installation progress. Between 0 and 1 for known progress, or less than 0 for unknown progress

DownloadStatusText const FText DownloadStatusText TotalDownloadedSize const float32 TotalDownloadedSize

Get the total downloaded size in megabytes. Valid during installation

DownloadSpeed const float32 DownloadSpeed

Get the current download speed in megabytes per second. Valid during installation

### MOBILE PATCHING

```
MOBILE PATCHING StartInstall void StartInstall(FOnContentInstallSucceeded OnSucceeded = FOnContentInstallSucceeded(),
```

FOnContentInstallFailed 	OnFailed	 = 	FOnContentInstallFailed ( )

### )

```
)
```

Attempt to download and install remote content.  User can choose to mount installed content into the game.

### GetRequiredDiskSpace

```
float32 GetRequiredDiskSpace()
```

Get the required disk space in megabytes for this content installation

### GetDownloadSize

```
float32 GetDownloadSize()
```

Get the total download size for this content installation

### MOBILE PATCHING|PROGRESS

```
MOBILE PATCHING|PROGRESS GetInstallProgress float32 GetInstallProgress()
```

Get the current installation progress. Between 0 and 1 for known progress, or less than 0 for unknown progress

### GetTotalDownloadedSize

```
float32 GetTotalDownloadedSize()
```

Get the total downloaded size in megabytes. Valid during installation

### GetDownloadStatusText

```
FText GetDownloadStatusText()
```

GetDownloadSpeed

### float32 GetDownloadSpeed

```
float32 GetDownloadSpeed()
```

Get the current download speed in megabytes per second. Valid during installation

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMobilePendingContent::StaticClass()
```
