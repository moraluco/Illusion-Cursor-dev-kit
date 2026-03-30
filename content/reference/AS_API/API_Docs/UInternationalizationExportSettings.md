# UInternationalizationExportSettings

**Visibility:** public

## Inheritance

UObject → UInternationalizationExportSettings → COMMONSETTINGS → CulturesToGenerate

## Description

TArray<FString> CulturesToGenerate

Which cultures should be exported

## GATHERTEXTSTEP

### SourcePath

```
FString SourcePath
```

Source for the localization data

### DestinationPath

```
FString DestinationPath
```

Destination for the localization data

### PortableObjectName

```
FString PortableObjectName
```

Filename for the Portable Object format file

### CommandletClass

```
FString CommandletClass
```

The commandlet to run

### ManifestName

```
FString ManifestName
```

Name of the manifest file

### ArchiveName

```
FString ArchiveName
```

Name of the archive file

### bExportLoc

```
bool bExportLoc
```

Whether or not to export localization data

### bImportLoc

```
bool bImportLoc
```

Whether or not to import localization data

### bUseCultureDirectory

```
bool bUseCultureDirectory
```

Whether or not to use culture path

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UInternationalizationExportSettings::StaticClass()
```
