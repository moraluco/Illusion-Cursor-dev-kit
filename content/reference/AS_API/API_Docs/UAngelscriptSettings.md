# UAngelscriptSettings

**Visibility:** public

## Inheritance

UObject → UAngelscriptSettings → ANGELSCRIPT → DefaultPropertyBlueprintSpecifier

## Description

EAngelscriptPropertyBlueprintSpecifier DefaultPropertyBlueprintSpecifier

Default Blueprint access specifier for script UPROPERTY()s without explicit Blueprint specifier.

bAllowScriptAssetReferences bool bAllowScriptAssetReferences

Whether to allow Asset() references to be used within script. (Requires editor restart)

bAutomaticImports bool bAutomaticImports

Whether to use the new automatic import system (explicit import statements no longer used)

bWarnOnManualImportStatements bool bWarnOnManualImportStatements

Emit warnings when import statements are used while automatic imports are turned on.

MathNamespace EAngelscriptMathNamespace MathNamespace

Namespace to use for math library functions in angelscript

DefaultPropertyEditSpecifier EAngelscriptPropertyEditSpecifier DefaultPropertyEditSpecifier

Default Edit access specifier for script UPROPERTY()s without explicit Edit specifier on classes.

DefaultPropertyEditSpecifierForStructs EAngelscriptPropertyEditSpecifier DefaultPropertyEditSpecifierForStructs

Default Edit access specifier for script UPROPERTY()s without explicit Edit specifier on structs.

PreprocessorFlags TArray<FString> PreprocessorFlags

Additional preprocessor flags which will be defined when preprocessing angelscript files.  Add them e.g. to BaseEngine.ini: [/Script/AngelscriptCode.AngelscriptSettings] +PreprocessorFlags="FOO" +PreprocessorFlags="BAR"

bMarkNonUpropertyPropertiesAsTransient bool bMarkNonUpropertyPropertiesAsTransient

Some properties are implicitly treated as UPROPERTY:s to be seen correctly by the GC, if true this ensures such properties are marked as transient to avoid unintentional serialization

bStripBlueprintLibraryNamespaceSuffix bool bStripBlueprintLibraryNamespaceSuffix

Strips the 'BlueprintLibrary' suffix from namespaced binds entirely. For example: `WidgetBlueprint::IsDragDropping()` becomes `Widget::IsDragDropping()`

EditorMaximumScriptExecutionTime float32 EditorMaximumScriptExecutionTime

Only in editor: If a script function takes longer than this time to execute, kill it with an exception.  This allows the editor to recover from accidental infinite loops, but does not work in cooked games!

bScriptFloatIsFloat64 bool bScriptFloatIsFloat64

In order to avoid confusion with blueprints, make the 'float' type in script resolve to 'float64'.

bDeprecateDoubleType bool bDeprecateDoubleType

Deprecate usage of the 'double' type in script, in favor of 'float64' or just 'float' when bScriptFloatIsFloat64.

bWarnOnFloatConstantsForDoubleValues bool bWarnOnFloatConstantsForDoubleValues

Emit a warning when using a float constant (eg `0.f`) to initialize a double value.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UAngelscriptSettings::StaticClass()
```
