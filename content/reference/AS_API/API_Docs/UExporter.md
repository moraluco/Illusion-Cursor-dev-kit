# UExporter

**Visibility:** public

## Inheritance

UObject → UExporter → UExporterFBX → ULevelExporterLOD → ULevelExporterOBJ → ULevelExporterSTL

## Description

and 18 other children

## MISC

### FormatExtension

```
TArray<FString> FormatExtension
```

File extension to use for this exporter

### FormatDescription

```
TArray<FString> FormatDescription
```

Descriptiong of the export format

### ExportTask

```
UAssetExportTask ExportTask
```
### bText

```
bool bText
```

If true, this will export the data as text

### SupportedClass

```
TSubclassOf<UObject> SupportedClass
```

Supported class of this exporter

---

## MISCELLANEOUS

### RunAssetExportTasks

```
static bool UExporter::RunAssetExportTasks(TArray<UAssetExportTask> ExportTasks)
```

Export the given objects to files.  Child classes do not override this, but they do provide an Export() function to do the resource-specific export work.

**Parameters**

ExportTasks
TArray<UAssetExportTask>

The array of tasks to export.

**Returns**

true if all tasks ran without error

RunAssetExportTask
static bool UExporter::RunAssetExportTask(
UAssetExportTask 	Task
	)

Export the given object to file.  Child classes do not override this, but they do provide an Export() function to do the resource-specific export work.

**Parameters**

Task
UAssetExportTask

The task to export.

**Returns**

true if the the object was successfully exported

ScriptRunAssetExportTask
bool ScriptRunAssetExportTask(
UAssetExportTask 	Task
	)

Export the given object to file.  Overridden by script based exporters.

**Parameters**

Task
UAssetExportTask

The task to export.

**Returns**

true if overridden by script exporter.

---

## FUNCTIONS

### SetbText

```
void SetbText(bool Value)
```

GetbText

### bool GetbText

```
bool GetbText()const STATIC FUNCTIONS
```

StaticClass

### static UClass UExporter::StaticClass

```
static UClass UExporter::StaticClass()
```
