# USourceControlHelpers

**Visibility:** public

## Inheritance

UObject → USourceControlHelpers

## Description

Editor source control common functionality.

@note Many of these source control methods use smart file strings which can be one of: - fully qualified path - relative path - long package name - asset path - export text path (often stored on clipboard)

For example: - D:\Epic\Dev-Ent\Projects\Python3rdBP\Content\Mannequin\Animations\ThirdPersonIdle.uasset - Content\Mannequin\Animations\ThirdPersonIdle.uasset - /Game/Mannequin/Animations/ThirdPersonIdle - /Game/Mannequin/Animations/ThirdPersonIdle.ThirdPersonIdle - AnimSequence'/Game/Mannequin/Animations/ThirdPersonIdle.ThirdPersonIdle'

EDITOR SCRIPTING | EDITOR SOURCE CONTROL HELPERS MarkFileForAdd static bool USourceControlHelpers::MarkFileForAdd( FString 	InFile, bool 	bSilent	 = 	false 	)

Use currently set source control provider to mark a file for add. Does nothing (and returns true) if the file is already under SC Note:  Blocks until action is complete.

Parameters InFile FString

The file to add - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

CheckInFiles static bool USourceControlHelpers::CheckInFiles( TArray<FString> 	InFiles, FString 	InDescription, bool 	bSilent	 = 	false 	)

Use currently set source control provider to check in specified files.  Note:  Blocks until action is complete.

Parameters InFiles TArray<FString>

Files to check out - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

InDescription FString

Description for check in

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

CheckOutFile static bool USourceControlHelpers::CheckOutFile( FString 	InFile, bool 	bSilent	 = 	false 	)

Use currently set source control provider to check out a file.  Note:  Blocks until action is complete.

Parameters InFile FString

The file to check out - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

CheckOutFiles static bool USourceControlHelpers::CheckOutFiles( TArray<FString> 	InFiles, bool 	bSilent	 = 	false 	)

Use currently set source control provider to check out specified files.  Note:  Blocks until action is complete.

Parameters InFiles TArray<FString>

Files to check out - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

CheckOutOrAddFile static bool USourceControlHelpers::CheckOutOrAddFile( FString 	InFile, bool 	bSilent	 = 	false 	)

Use currently set source control provider to check out file or mark it for add.  Note:  Blocks until action is complete.

Parameters InFile FString

The file to check out/add - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

CheckOutOrAddFiles static bool USourceControlHelpers::CheckOutOrAddFiles( TArray<FString> 	InFiles, bool 	bSilent	 = 	false 	)

Use currently set source control provider to check out files or mark them for add.  Note:  Blocks until action is complete.

Parameters InFiles TArray<FString>

The files to check out/add - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

CopyFile static bool USourceControlHelpers::CopyFile( FString 	InSourceFile, FString 	InDestFile, bool 	bSilent	 = 	false 	)

Use currently set source control provider to copy a file.  Note:  Blocks until action is complete.

Parameters InSourceFile FString

Source file string to copy from - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

InDestFile FString

Source file string to copy to - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard). If package, then uses same extension as source file.

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

CurrentProvider static FString USourceControlHelpers::CurrentProvider()

Determine the name of the current source control provider.

Returns

the name of the current source control provider. If one is not set then "None" is returned.

IsAvailable static bool USourceControlHelpers::IsAvailable()

Quick check if currently set source control provider is enabled and available for use (server-based providers can use this to return whether the server is available or not)

Returns

true if source control is available, false if it is not

IsEnabled static bool USourceControlHelpers::IsEnabled()

Determine if there is a source control system enabled

Returns

true if enabled, false if not

LastErrorMsg static FText USourceControlHelpers::LastErrorMsg()

Get status text set by SourceControl system if an error occurs regardless whether bSilent is set or not.  Only set if there was an error.

CheckInFile static bool USourceControlHelpers::CheckInFile( FString 	InFile, FString 	InDescription, bool 	bSilent	 = 	false 	)

Use currently set source control provider to check in a file.  Note:  Blocks until action is complete.

Parameters InFile FString

The file to check in - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

InDescription FString

Description for check in

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

MarkFileForDelete static bool USourceControlHelpers::MarkFileForDelete( FString 	InFile, bool 	bSilent	 = 	false 	)

Use currently set source control provider to remove file from source control and delete the file.  Note:  Blocks until action is complete.

Parameters InFile FString

The file to delete - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

MarkFilesForAdd static bool USourceControlHelpers::MarkFilesForAdd( TArray<FString> 	InFiles, bool 	bSilent	 = 	false 	)

Use currently set source control provider to mark files for add. Does nothing (and returns true) for any file that is already under SC Note:  Blocks until action is complete.

Parameters InFiles TArray<FString>

Files to check out - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

MarkFilesForDelete static bool USourceControlHelpers::MarkFilesForDelete( TArray<FString> 	InFiles, bool 	bSilent	 = 	false 	)

Use currently set source control provider to remove files from source control and delete the files.  Note:  Blocks until action is complete.

Parameters bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

QueryFileState static FSourceControlState USourceControlHelpers::QueryFileState( FString 	InFile, bool 	bSilent	 = 	false 	)

Use currently set source control provider to query a file's source control state.  Note:  Blocks until action is complete.

Parameters InFile FString

The file to query - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns Source control state

see USourceControlState. It will have bIsValid set to false if it could not have its values set.

RevertFile static bool USourceControlHelpers::RevertFile( FString 	InFile, bool 	bSilent	 = 	false 	)

Use currently set source control provider to revert a file regardless whether any changes will be lost or not.  Note:  Blocks until action is complete.

Parameters InFile FString

The file to revert - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

RevertFiles static bool USourceControlHelpers::RevertFiles( TArray<FString> 	InFiles, bool 	bSilent	 = 	false 	)

Use currently set source control provider to revert files regardless whether any changes will be lost or not.  Note:  Blocks until action is complete.

Parameters InFiles TArray<FString>

Files to revert - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

RevertUnchangedFile static bool USourceControlHelpers::RevertUnchangedFile( FString 	InFile, bool 	bSilent	 = 	false 	)

Use currently set source control provider to revert a file provided no changes have been made.  Note:  Blocks until action is complete.

Parameters InFile FString

File to check out - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

RevertUnchangedFiles static bool USourceControlHelpers::RevertUnchangedFiles( TArray<FString> 	InFiles, bool 	bSilent	 = 	false 	)

Use currently set source control provider to revert files provided no changes have been made.  Note:  Blocks until action is complete.

Parameters InFiles TArray<FString>

Files to check out - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

SyncFile static bool USourceControlHelpers::SyncFile( FString 	InFile, bool 	bSilent	 = 	false 	)

Use currently set source control provider to sync a file or directory to the head revision.  Note:  Blocks until action is complete.

Parameters InFile FString

The file or directory to sync - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

SyncFiles static bool USourceControlHelpers::SyncFiles( TArray<FString> 	InFiles, bool 	bSilent	 = 	false 	)

Use currently set source control provider to sync files or directories to the head revision.  Note:  Blocks until action is complete.

Parameters InFiles TArray<FString>

Files or directories to sync - can be either fully qualified path, relative path, long package name, asset path or export text path (often stored on clipboard)

bSilent bool

if false (default) then write out any error info to the Log. Any error text can be retrieved by LastErrorMsg() regardless.

Returns

true if succeeded, false if failed and can call LastErrorMsg() for more info.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USourceControlHelpers::StaticClass()
```
