# EditorDialog

## Inheritance

EditorDialog

## Description

EDITOR SCRIPTING | MESSAGE DIALOG ShowMessage static EAppReturnType EditorDialog::ShowMessage( FText 	Title, FText 	Message, EAppMsgType 	MessageType, EAppReturnType 	DefaultValue	 = 	Type :: No 	)

Open a modal message box dialog with the given message. If running in "-unattended" mode it will immediately return the value specified by DefaultValue. If not running in "-unattended" mode then it will block execution until the user makes a decision, at which point their decision will be returned.

Parameters Title FText

The title of the created dialog window

Message FText

Text of the message to show

MessageType EAppMsgType

Specifies which buttons the dialog should have

DefaultValue EAppReturnType

If the application is Unattended, the function will log and return DefaultValue

Returns

The result of the users decision, or DefaultValue if running in unattended mode.

EDITOR SCRIPTING | OBJECT DIALOG ShowObjectDetailsView static bool EditorDialog::ShowObjectDetailsView(

FText 	Title, UObject 	InOutObject, FEditorDialogLibraryObjectDetailsViewOptions 	Options

)

Open a modal message box dialog containing a details view for inspecting / modifying a UObject.

Parameters Title FText

The title of the created dialog window

InOutObject UObject

Object instance of ClassOfObject which is supposed to be viewed

Options FEditorDialogLibraryObjectDetailsViewOptions

Optional settings to customize the look of the details view

Returns

The result of the users decision, true=Ok, false=Cancel, or false if running in unattended mode.

EDITOR SCRIPTING | OBJECTS DIALOG ShowObjectsDetailsView static bool EditorDialog::ShowObjectsDetailsView(

FText 	Title, TArray<UObject> 	InOutObjects, FEditorDialogLibraryObjectDetailsViewOptions 	Options

)

Open a modal message box dialog containing a details view for inspecting / modifying multiples UObjects.

Parameters Title FText

The title of the created dialog window

InOutObjects TArray<UObject>

Array of object instances which are supposed to be viewed

Options FEditorDialogLibraryObjectDetailsViewOptions

Optional settings to customize the look of the details view

Returns

The result of the users decision, true=Ok, false=Cancel, or false if running in unattended mode.

EDITOR SCRIPTING | SUPRESSABLE WARNING DIALOG ShowSuppressableWarningDialog static bool EditorDialog::ShowSuppressableWarningDialog( FText 	Title, FText 	Message, FString 	InIniSettingName, FString 	InIniSettingFileNameOverride	 = 	"", bool 	bDefaultValue	 = 	true 	)

Open a modal suppressable warning window, if suppressed will return the default value

Parameters Title FText

The title of the created dialog window

Message FText

Text of the message to show

InIniSettingName FString

The name of the entry in the INI where the state of the "Disable this warning" check box is stored

InIniSettingFileNameOverride FString

The name of the INI where the state of the InIniSettingName flag is stored (defaults to GEditorPerProjectIni)

bDefaultValue bool

If the warning is suppressed, the function will log and return DefaultValue

Returns

The result of the users decision, or DefaultValue if suppressed.
