# UAssetEditorSubsystem

**Visibility:** public

## Inheritance

UEditorSubsystem → UAssetEditorSubsystem

## Description

UAssetEditorSubsystem

EDITOR SCRIPTING | ASSET TOOLS OpenEditorForAssets bool OpenEditorForAssets( TArray<UObject> 	Assets 	)

Tries to open an editor for all of the specified assets.  If any of the assets are already open, it will not create a new editor for them.  If all assets are of the same type, the supporting AssetTypeAction (if it exists) is responsible for the details of how to handle opening multiple assets at once.

CloseAllEditorsForAsset int CloseAllEditorsForAsset( UObject 	Asset 	)

Close all active editors for the supplied asset and return the number of asset editors that were closed

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UAssetEditorSubsystem UAssetEditorSubsystem::Get()
```

StaticClass

### static UClass UAssetEditorSubsystem::StaticClass

```
static UClass UAssetEditorSubsystem::StaticClass()
```
