# Paths

## Inheritance

Paths

## Description

STATIC VARIABLES ProjectFilePath static FString Paths::ProjectFilePath EngineLocalizationPaths static const TArray<FString> Paths::EngineLocalizationPaths GameLocalizationPaths static const TArray<FString> Paths::GameLocalizationPaths InvalidFileSystemChars static const FString Paths::InvalidFileSystemChars EditorLocalizationPaths static const TArray<FString> Paths::EditorLocalizationPaths PropertyNameLocalizationPaths static const TArray<FString> Paths::PropertyNameLocalizationPaths RelativePathToRoot static const FString Paths::RelativePathToRoot RestrictedFolderNames static const TArray<FString> Paths::RestrictedFolderNames ToolTipLocalizationPaths static const TArray<FString> Paths::ToolTipLocalizationPaths

## UTILITIES \| PATHS

### GetProjectFilePath

```
static FString Paths::GetProjectFilePath()
```

Gets the path to the project file.

**Returns**

Project file path.

AutomationLogDir
static FString Paths::AutomationLogDir()

Returns the directory for automation log files

AutomationTransientDir
static FString Paths::AutomationTransientDir()

Returns the directory for automation save files that are meant to be deleted every run

BugItDir
static FString Paths::BugItDir()

Returns the directory the engine uses to output BugIt files.

**Returns**

screenshot directory

ChangeExtension
static FString Paths::ChangeExtension(
FString 	InPath,
FString 	InNewExtension
	)

Changes the extension of the given filename (does nothing if the file has no extension)

CloudDir
static FString Paths::CloudDir()

Returns the directory for local files used in cloud emulation or support

CollapseRelativeDirectories
static bool Paths::CollapseRelativeDirectories(
FString 	InPath,
FString& 	OutPath
	)

Takes a fully pathed string and eliminates relative pathing (eg: annihilates ".." with the adjacent directory).  Assumes all slashes have been converted to TEXT('/').  For example, takes the string: BaseDirectory/SomeDirectory/../SomeOtherDirectory/Filename.ext and converts it to: BaseDirectory/SomeOtherDirectory/Filename.ext

Combine
static FString Paths::Combine(
TArray<FString> 	InPaths
	)

Combine two or more Paths into one single Path

ConvertFromSandboxPath
static FString Paths::ConvertFromSandboxPath(
FString 	InPath,
FString 	InSandboxName
	)

Converts a sandbox (in Saved/Sandboxes) path to a normal path.

**Parameters**

InSandboxName
FString

The name of the sandbox.

ConvertRelativePathToFull
static FString Paths::ConvertRelativePathToFull(
FString 	InPath,
FString 	InBasePath	 = 	""
	)

Converts a relative path name to a fully qualified name relative to the specified BasePath.  BasePath will be the process BaseDir() if not BasePath is given

ConvertToSandboxPath
static FString Paths::ConvertToSandboxPath(
FString 	InPath,
FString 	InSandboxName
	)

Converts a normal path to a sandbox path (in Saved/Sandboxes).

**Parameters**

InSandboxName
FString

The name of the sandbox.

CreateTempFilename
static FString Paths::CreateTempFilename(
FString 	Path,
FString 	Prefix	 = 	"",
FString 	Extension	 = 	""
	)

Creates a temporary filename with the specified prefix.

**Parameters**

Path
FString

The file pathname.

Prefix
FString

The file prefix.

Extension
FString

File extension ('.' required).

DiffDir
static FString Paths::DiffDir()

Returns the directory for temp files used for diffing

DirectoryExists
static bool Paths::DirectoryExists(
FString 	InPath
	)

Returns true if this directory was found, false otherwise

EngineConfigDir
static FString Paths::EngineConfigDir()

Returns the directory the root configuration files are located.

**Returns**

root config directory

EngineContentDir
static FString Paths::EngineContentDir()

Returns the content directory of the "core" engine that can be shared across several games or across games & mods.

**Returns**

engine content directory

EngineDir
static FString Paths::EngineDir()

Returns the base directory of the "core" engine that can be shared across several games or across games & mods. Shaders and base localization files e.g. reside in the engine directory.

**Returns**

engine directory

EngineIntermediateDir
static FString Paths::EngineIntermediateDir()

Returns the intermediate directory of the engine

**Returns**

content directory

EnginePluginsDir
static FString Paths::EnginePluginsDir()

Returns the plugins directory of the engine

**Returns**

Plugins directory.

EngineSavedDir
static FString Paths::EngineSavedDir()

Returns the saved directory of the engine

**Returns**

Saved directory.

EngineSourceDir
static FString Paths::EngineSourceDir()

Returns the directory where engine source code files are kept

EngineUserDir
static FString Paths::EngineUserDir()

Returns the root directory for user-specific engine files. Always writable.

**Returns**

root user directory

EngineVersionAgnosticUserDir
static FString Paths::EngineVersionAgnosticUserDir()

Returns the root directory for user-specific engine files which can be shared between versions. Always writable.

**Returns**

root user directory

EnterpriseDir
static FString Paths::EnterpriseDir()

Returns the base directory enterprise directory.

**Returns**

enterprise directory

EnterpriseFeaturePackDir
static FString Paths::EnterpriseFeaturePackDir()

Returns the enterprise FeaturePack directory

**Returns**

FeaturePack directory.

EnterprisePluginsDir
static FString Paths::EnterprisePluginsDir()

Returns the enterprise plugins directory

**Returns**

Plugins directory.

FeaturePackDir
static FString Paths::FeaturePackDir()

Returns the directory where feature packs are kept

FileExists
static bool Paths::FileExists(
FString 	InPath
	)

Returns true if this file was found, false otherwise

GameAgnosticSavedDir
static FString Paths::GameAgnosticSavedDir()

Returns the saved directory that is not game specific. This is usually the same as EngineSavedDir().

**Returns**

saved directory

GameDevelopersDir
static FString Paths::GameDevelopersDir()

Returns the directory that contains subfolders for developer-specific content

GameSourceDir
static FString Paths::GameSourceDir()

Returns the directory where game source code files are kept

GameUserDeveloperDir
static FString Paths::GameUserDeveloperDir()

Returns the directory that contains developer-specific content for the current user

GeneratedConfigDir
static FString Paths::GeneratedConfigDir()

Returns the directory the engine saves generated config files.

**Returns**

config directory

GetBaseFilename
static FString Paths::GetBaseFilename(
FString 	InPath,
bool 	bRemovePath	 = 	true
	)

Returns the same thing as GetCleanFilename, but without the extension

GetCleanFilename
static FString Paths::GetCleanFilename(
FString 	InPath
	)

Returns the filename (with extension), minus any path information.

GetEditorLocalizationPaths
static const TArray<FString>& Paths::GetEditorLocalizationPaths()

Returns a list of editor-specific localization paths

GetEngineLocalizationPaths
static const TArray<FString>& Paths::GetEngineLocalizationPaths()

Returns a list of engine-specific localization paths

GetExtension
static FString Paths::GetExtension(
FString 	InPath,
bool 	bIncludeDot	 = 	false
	)

Gets the extension for this filename.

**Parameters**

bIncludeDot
bool

if true, includes the leading dot in the result

**Returns**

the extension of this filename, or an empty string if the filename doesn't have an extension.

GetGameLocalizationPaths
static const TArray<FString>& Paths::GetGameLocalizationPaths()

Returns a list of game-specific localization paths

GetInvalidFileSystemChars
static FString Paths::GetInvalidFileSystemChars()

Returns a string containing all invalid characters as dictated by the operating system

GetPath
static FString Paths::GetPath(
FString 	InPath
	)

Returns the path in front of the filename

AutomationDir
static FString Paths::AutomationDir()

Returns the directory for automation save files

GetPropertyNameLocalizationPaths
static const TArray<FString>& Paths::GetPropertyNameLocalizationPaths()

Returns a list of property name localization paths

GetRelativePathToRoot
static const FString& Paths::GetRelativePathToRoot()

Gets the relative path to get from BaseDir to RootDirectory

GetRestrictedFolderNames
static const TArray<FString>& Paths::GetRestrictedFolderNames()

Returns a list of restricted/internal folder names (without any slashes) which may be tested against full paths to determine if a path is restricted or not.

GetToolTipLocalizationPaths
static const TArray<FString>& Paths::GetToolTipLocalizationPaths()

Returns a list of tool tip localization paths

HasProjectPersistentDownloadDir
static bool Paths::HasProjectPersistentDownloadDir()

Returns true if a writable directory for downloaded data that persists across play sessions is available

IsDrive
static bool Paths::IsDrive(
FString 	InPath
	)

Returns true if this path represents a root drive or volume

IsProjectFilePathSet
static bool Paths::IsProjectFilePathSet()

Checks whether the path to the project file, if any, is set.

**Returns**

true if the path is set, false otherwise.

IsRelative
static bool Paths::IsRelative(
FString 	InPath
	)

Returns true if this path is relative to another path

IsRestrictedPath
static bool Paths::IsRestrictedPath(
FString 	InPath
	)

Determines if supplied path uses a restricted/internal subdirectory.  Note that slashes are normalized and character case is ignored for the comparison.

IsSamePath
static bool Paths::IsSamePath(
FString 	PathA,
FString 	PathB
	)

Checks if two paths are the same.

**Parameters**

PathA
FString

First path to check.

PathB
FString

Second path to check.

**Returns**

True if both paths are the same. False otherwise.

LaunchDir
static FString Paths::LaunchDir()

Returns the directory the application was launched from (useful for commandline utilities)

MakePathRelativeTo
static bool Paths::MakePathRelativeTo(
FString 	InPath,
FString 	InRelativeTo,
FString& 	OutPath
	)

Assuming both paths (or filenames) are relative to the same base dir, converts InPath to be relative to InRelativeTo

**Parameters**

InPath
FString

Path to change to be relative to InRelativeTo

InRelativeTo
FString

Path to use as the new relative base

**Returns**

true if OutPath was changed to be relative

MakePlatformFilename
static void Paths::MakePlatformFilename(
FString 	InPath,
FString& 	OutPath
	)

Takes an "Unreal" pathname and converts it to a platform filename.

MakeStandardFilename
static void Paths::MakeStandardFilename(
FString 	InPath,
FString& 	OutPath
	)

Make fully standard "Unreal" pathname: - Normalizes path separators [NormalizeFilename] - Removes extraneous separators  [NormalizeDirectoryName, as well removing adjacent separators] - Collapses internal ..'s - Makes relative to Engine\Binaries\<Platform> (will ALWAYS start with ..\..\..)

MakeValidFileName
static FString Paths::MakeValidFileName(
FString 	InString,
FString 	InReplacementChar	 = 	""
	)

Returns a string that is safe to use as a filename because all items in GetInvalidFileSystemChars() are removed

Optionally specify the character to replace invalid characters with

NormalizeDirectoryName
static void Paths::NormalizeDirectoryName(
FString 	InPath,
FString& 	OutPath
	)

Normalize all / and \ to TEXT("/") and remove any trailing TEXT("/") if the character before that is not a TEXT("/") or a colon

NormalizeFilename
static void Paths::NormalizeFilename(
FString 	InPath,
FString& 	OutPath
	)

Convert all / and \ to TEXT("/")

ProfilingDir
static FString Paths::ProfilingDir()

Returns the directory the engine uses to output profiling files.

**Returns**

log directory

ProjectConfigDir
static FString Paths::ProjectConfigDir()

Returns the directory the root configuration files are located.

**Returns**

root config directory

ProjectContentDir
static FString Paths::ProjectContentDir()

Returns the content directory of the current game by looking at FApp::GetProjectName().

**Returns**

content directory

ProjectDir
static FString Paths::ProjectDir()

Returns the base directory of the current project by looking at FApp::GetProjectName().  This is usually a subdirectory of the installation root directory and can be overridden on the command line to allow self contained mod support.

**Returns**

base directory

ProjectIntermediateDir
static FString Paths::ProjectIntermediateDir()

Returns the intermediate directory of the current game by looking at FApp::GetProjectName().

**Returns**

intermediate directory

ProjectLogDir
static FString Paths::ProjectLogDir()

Returns the directory the engine uses to output logs. This currently can't be an .ini setting as the game starts logging before it can read from .ini files.

**Returns**

log directory

ProjectModsDir
static FString Paths::ProjectModsDir()

Returns the mods directory of the current project by looking at FApp::GetProjectName().

**Returns**

mods directory

ProjectPersistentDownloadDir
static FString Paths::ProjectPersistentDownloadDir()

Returns the writable directory for downloaded data that persists across play sessions.

ProjectPluginsDir
static FString Paths::ProjectPluginsDir()

Returns the plugins directory of the current game by looking at FApp::GetProjectName().

**Returns**

plugins directory

ProjectSavedDir
static FString Paths::ProjectSavedDir()

Returns the saved directory of the current game by looking at FApp::GetProjectName().

**Returns**

saved directory

ProjectUserDir
static FString Paths::ProjectUserDir()

Returns the root directory for user-specific game files.

**Returns**

game user directory

RemoveDuplicateSlashes
static void Paths::RemoveDuplicateSlashes(
FString 	InPath,
FString& 	OutPath
	)

Removes duplicate slashes in paths.  Assumes all slashes have been converted to TEXT('/').  For example, takes the string: BaseDirectory/SomeDirectory//SomeOtherDirectory////Filename.ext and converts it to: BaseDirectory/SomeDirectory/SomeOtherDirectory/Filename.ext

RootDir
static FString Paths::RootDir()

Returns the root directory of the engine directory tree

**Returns**

Root directory.

SandboxesDir
static FString Paths::SandboxesDir()

Returns the directory the engine stores sandbox output

**Returns**

sandbox directory

ScreenShotDir
static FString Paths::ScreenShotDir()

Returns the directory the engine uses to output screenshot files.

**Returns**

screenshot directory

SetExtension
static FString Paths::SetExtension(
FString 	InPath,
FString 	InNewExtension
	)

Sets the extension of the given filename (like ChangeExtension, but also applies the extension if the file doesn't have one)

SetProjectFilePath
static void Paths::SetProjectFilePath(
FString 	NewGameProjectFilePath
	)

Sets the path to the project file.

**Parameters**

NewGameProjectFilePath
FString

The project file path to set.

ShaderWorkingDir
static FString Paths::ShaderWorkingDir()

Returns the Shader Working Directory

**Returns**

shader working directory

ShouldSaveToUserDir
static bool Paths::ShouldSaveToUserDir()

Should the "saved" directory structures be rooted in the user dir or relative to the "engine/game"

SourceConfigDir
static FString Paths::SourceConfigDir()

Returns the directory the engine uses to look for the source leaf ini files. This can't be an .ini variable for obvious reasons.

**Returns**

source config directory

Split
static void Paths::Split(
FString 	InPath,
FString& 	PathPart,
FString& 	FilenamePart,
FString& 	ExtensionPart
	)

Parses a fully qualified or relative filename into its components (filename, path, extension).

ValidatePath
static void Paths::ValidatePath(
FString 	InPath,
bool& 	bDidSucceed,
FText& 	OutReason
	)

Validates that the parts that make up the path contain no invalid characters as dictated by the operating system Note that this is a different set of restrictions to those imposed by FPackageName

**Parameters**

InPath
FString

path to validate

bDidSucceed
bool&

Whether the path could be validated

OutReason
FText&

If validation fails, this is filled with the failure reason

VideoCaptureDir
static FString Paths::VideoCaptureDir()

Returns the directory the engine uses to output user requested video capture files.

**Returns**

Video capture directory
