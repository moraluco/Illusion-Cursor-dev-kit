# UProjectPackagingSettings

**Visibility:** public

## Inheritance

UObject → UProjectPackagingSettings

## Description

Implements the Editor's user settings.

## PACKAGING

### PackageCompressionMinBytesSaved

```
int PackageCompressionMinBytesSaved
```

A generic setting which is used to determine whether it is worth using compression for a block of data when creating IoStore or .pak files.  If the amount of saved bytes is smaller than the specified value, then the block of data remains uncompressed.  The optimal value of this setting depends on the capabilities of the target platform. For instance PackageCompressionMinBytesSaved=1024 Note that some compressors (for example Oodle) do their own internal worth it check and only use this value to determine the minimal size of a block which should be compressed.

### PackageCompressionMinPercentSaved

```
int PackageCompressionMinPercentSaved
```

A generic setting which is used to determine whether it is worth using compression for a block of data when creating IoStore or .pak files.  If the saved percentage of a compressed block of data is smaller than the specified value, then the block remains uncompressed.  The optimal value of this setting depends on the capabilities of the target platform. For instance PackageCompressionMinPercentSaved=5 Note that some compressors (for example Oodle) do their own internal worth it check and ignore this value.

### IniSectionBlacklist

```
TArray<FString> IniSectionBlacklist
```

List of ini file sections to strip when packaging

### IniKeyBlacklist

```
TArray<FString> IniKeyBlacklist
```

List of ini file keys to strip when packaging

### NonUFSMovies

```
TArray<FString> NonUFSMovies
```

If SkipMovies is true, these specific movies will be copied when packaging your project, but are not supposed to be part of the .pak file This should be the name with no extension

### bSkipMovies

```
bool bSkipMovies
```

Don't include movies by default when staging/packaging Specific movies can be specified below, and this can be in a platform ini

### bUseIoStore

```
bool bUseIoStore
```

If enabled, use .utoc/.ucas container files for staged/packaged package data instead of pak.

### CompressedChunkWildcard

```
TArray<FString> CompressedChunkWildcard
```

If set, only these specific pak files will be compressed. This should take the form of "pakchunk0" This can be set in a platform-specific ini file

### UFSMovies

```
TArray<FString> UFSMovies
```

If SkipMovies is true, these specific movies will still be added to the .pak file (if using a .pak file; otherwise they're copied as individual files) This should be the name with no extension

### bGenerateChunks

```
bool bGenerateChunks
```

If enabled, will generate pak file chunks.  Assets can be assigned to chunks in the editor or via a delegate (See ShooterGameDelegates.cpp).  Can be used for streaming installs (PS4 Playgo, XboxOne Streaming Install, etc)

### bGenerateNoChunks

```
bool bGenerateNoChunks
```

If enabled, no platform will generate chunks, regardless of settings in platform-specific ini files.

### bChunkHardReferencesOnly

```
bool bChunkHardReferencesOnly
```

Normally during chunk generation all dependencies of a package in a chunk will be pulled into that package's chunk.  If this is enabled then only hard dependencies are pulled in. Soft dependencies stay in their original chunk.

### bUseZenStore

```
bool bUseZenStore
```

If enabled, use Zen storage server for storing and fetching cooked data instead of using the local file system.

### MaxChunkSize

```
int64 MaxChunkSize
```

If > 0 this sets a maximum size per chunk. Chunks larger than this size will be split into multiple pak files such as pakchunk0_s1 This can be set in platform specific game.ini files

### bBuildHttpChunkInstallData

```
bool bBuildHttpChunkInstallData
```

If enabled, will generate data for HTTP Chunk Installer. This data can be hosted on webserver to be installed at runtime. Requires "Generate Chunks" enabled.

### UsePakFile

```
bool UsePakFile
```

If enabled, all content will be put into a one or more .pak files instead of many individual files (default = enabled).

### PackageCompressionFormat

```
FString PackageCompressionFormat
```

A comma separated list of formats to use for .pak file and IoStore compression. If more than one is specified, the list is in order of priority, with fallbacks to other formats in case of errors or unavailability of the format (plugin not enabled, etc).  Commonly PackageCompressionFormat=Oodle or PackageCompressionFormat=None

### bForceUseProjectCompressionFormatIgnoreHardwareOverride

```
bool bForceUseProjectCompressionFormatIgnoreHardwareOverride
```

Force use of PackageCompressionFormat (do not use override HardwareCompressionFormat from DDPI)

### PackageAdditionalCompressionOptions

```
FString PackageAdditionalCompressionOptions
```

A generic setting for allowing a project to control compression settings during .pak file and iostore compression.  For instance PackageAdditionalCompressionOptions=-compressionblocksize=1MB -asynccompression

### PackageCompressionMethod

```
FString PackageCompressionMethod
```

For compressors with multiple methods, select one.  eg. for Oodle you may use one of {Kraken,Mermaid,Selkie,Leviathan}

### PackageCompressionLevel_DebugDevelopment

```
int PackageCompressionLevel_DebugDevelopment
```

For compressors with variable levels, select the encoder effort level, which makes packages smaller but takes more time to encode.  This does not affect decode speed.  For faster iteration, use lower effort levels (eg. 1)

### PackageCompressionLevel_TestShipping

```
int PackageCompressionLevel_TestShipping
```
### PackageCompressionLevel_Distribution

```
int PackageCompressionLevel_Distribution
```
### bForceOneChunkPerFile

```
bool bForceOneChunkPerFile
```

If true, individual files are only allowed to be in a single chunk and it will assign it to the lowest number requested If false, it may end up in multiple chunks if requested by the cooker

### ProjectCustomBuilds

```
TArray<FProjectBuildSettings> ProjectCustomBuilds
```

A list of custom builds that will show up in the Platforms menu to allow customized builds that make sense for your project. Will show up near Package Project in the Platforms menu.

### bPackageCompressionEnableDDC

```
bool bPackageCompressionEnableDDC
```

Specifies if DDC should be used to store and retrieve compressed data when creating IoStore containers.

### PackageCompressionMinSizeToConsiderDDC

```
int PackageCompressionMinSizeToConsiderDDC
```

Specifies the minimum (uncompressed) size for storing a compressed IoStore chunk in DDC.

### HttpChunkInstallDataVersion

```
FString HttpChunkInstallDataVersion
```

Version name for HTTP Chunk Install Data.

### bMakeBinaryConfig

```
bool bMakeBinaryConfig
```

If enabled, staging will make a binary config file for faster loading.

### bCompressed

```
bool bCompressed
```

Create compressed cooked packages (decreased deployment size)

### bShareMaterialShaderCode

```
bool bShareMaterialShaderCode
```

By default shader code gets saved inline inside material assets, enabling this option will store only shader code once as individual files This will reduce overall package size but might increase loading time

### bDeterministicShaderCodeOrder

```
bool bDeterministicShaderCodeOrder
```

With this option off, the shader code will be stored in the library essentially in a random order, squarely the same in which the assets were loaded by the cooker. Enabling this will sort the shaders by their hash, which makes the shader library more similar between the builds which can help patching, but can adversely affect loading times.

### bSharedMaterialNativeLibraries

```
bool bSharedMaterialNativeLibraries
```

By default shader shader code gets saved into individual platform agnostic files, enabling this option will use the platform-specific library format if and only if one is available This will reduce overall package size but might increase loading time

### IncludeCrashReporter

```
bool IncludeCrashReporter
```

Specifies whether to include the crash reporter in the packaged project.  This is included by default for Blueprint based projects, but can optionally be disabled.

### InternationalizationPreset

```
EProjectPackagingInternationalizationPresets InternationalizationPreset
```

Predefined sets of culture whose internationalization data should be packaged.

### CulturesToStage

```
TArray<FString> CulturesToStage
```

Cultures whose data should be cooked, staged, and packaged.

### LocalizationTargetsToChunk

```
TArray<FString> LocalizationTargetsToChunk
```

List of localization targets that should be chunked during cooking (if using chunks)

### LocalizationTargetCatchAllChunkId

```
int LocalizationTargetCatchAllChunkId
```

The chunk ID that should be used as the catch-all chunk for any non-asset localized strings

### bCookAll

```
bool bCookAll
```

Cook all things in the project content directory

### bCookMapsOnly

```
bool bCookMapsOnly
```

Cook only maps (this only affects the cookall flag)

### bSkipEditorContent

```
bool bSkipEditorContent
```

Don't include content in any editor folders when cooking.  This can cause issues with missing content in cooked games if the content is being used.

---

## PREREQUISITES

### IncludePrerequisites

```
bool IncludePrerequisites
```

Specifies whether to include an installer for prerequisites of packaged games, such as redistributable operating system components, on platforms that support it.

### IncludeAppLocalPrerequisites

```
bool IncludeAppLocalPrerequisites
```

Specifies whether to include prerequisites alongside the game executable.

---

## PROJECT

### FullRebuild

```
bool FullRebuild
```

If enabled, a full rebuild will be enforced each time the project is being packaged.  If disabled, only modified files will be built, which can improve iteration time.  Unless you iterate on packaging, we recommend full rebuilds when packaging.

### IncludeDebugFiles

```
bool IncludeDebugFiles
```

If enabled, debug files will be included in staged shipping builds.

### ForDistribution

```
bool ForDistribution
```

If enabled, a distribution build will be created and the shipping configuration will be used If disabled, a development build will be created Distribution builds are for publishing to the App Store

### Build

```
EProjectPackagingBuild Build
```

Specifies whether to build the game executable during packaging.

### BuildTarget

```
FString BuildTarget
```

Name of the target to build

### BuildConfiguration

```
EProjectPackagingBuildConfigurations BuildConfiguration
```

The build configuration for which the project is packaged.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UProjectPackagingSettings::StaticClass()
```
