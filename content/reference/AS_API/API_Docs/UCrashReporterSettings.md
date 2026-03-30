# UCrashReporterSettings

**Visibility:** public

## Inheritance

UObject → UCrashReporterSettings

## Description

Implements per-project cooker settings exposed to the editor

## CRASHREPORTER

### DownstreamStorage

```
FString DownstreamStorage
```

Local downstream PDB storage path (used for caching remote .PDB files)

### RemoteStorage

```
TArray<FString> RemoteStorage
```

Remote PDB storage (directory path or http/https URL)

### UploadSymbolsPath

```
FString UploadSymbolsPath
```

Directory for uploading locally built binaries and .PDB files

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCrashReporterSettings::StaticClass()
```
