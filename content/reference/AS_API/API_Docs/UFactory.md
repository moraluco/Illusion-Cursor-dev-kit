# UFactory

**Visibility:** public

## Inheritance

UObject → UFactory → UAlembicImportFactory → UAnimationSharingSetupFactory → UAnimBlueprintFactory → UAnimBoneCompressionSettingsFactory

## Description

and 137 other children

Base class for all factories An object responsible for creating and importing new objects.

## MISC

### AssetImportTask

```
UAssetImportTask AssetImportTask
```

Task for importing file via script interfaces

### ContextClass

```
TSubclassOf<UObject> ContextClass
```

Class of the context object used to help create the object.

### Formats

```
TArray<FString> Formats
```

List of formats supported by the factory. Each entry is of the form "ext;Description" where ext is the file extension.

### AutomatedImportData

```
UAutomatedAssetImportData AutomatedImportData
```

Data for how to import files via the automated command line importing interface

### SupportedClass

```
TSubclassOf<UObject> SupportedClass
```

The class manufactured by this factory.

### bCreateNew

```
bool bCreateNew
```

The default value to return from CanCreateNew()

### bEditAfterNew

```
bool bEditAfterNew
```

true if the associated editor should be opened after creating a new object.

### bEditorImport

```
bool bEditorImport
```

true if the factory imports objects from files.

### bText

```
bool bText
```

true if the factory imports objects from text.

---

## MISCELLANEOUS

### ScriptFactoryCreateFile

```
bool ScriptFactoryCreateFile(UAssetImportTask InTask)
```

Import object(s) using a task via script

**Returns**

True if script implements

ScriptFactoryCanImport
bool ScriptFactoryCanImport(
FString 	Filename
	)

Whether the specified file can be imported by this factory. (Implemented in script)

**Returns**

true if the file is supported, false otherwise.

---

## FUNCTIONS

### SetbCreateNew

```
void SetbCreateNew(bool Value)
```

GetbEditAfterNew

### bool GetbEditAfterNew

```
bool GetbEditAfterNew()const GetbCreateNew
```

bool GetbCreateNew() const

### SetbEditAfterNew

```
void SetbEditAfterNew(bool Value)
```

GetbEditorImport

### bool GetbEditorImport

```
bool GetbEditorImport()const SetbEditorImport
```

void SetbEditorImport(

### bool 	Value

```
bool 	Value 	)
```

GetbText

### bool GetbText

```
bool GetbText()const SetbText
```

void SetbText(

### bool 	Value

```
bool 	Value 	)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFactory::StaticClass()
```
