# UToolMenuEntryExtensions

**Visibility:** public

## Inheritance

UObject → UToolMenuEntryExtensions

## Description

TOOL MENUS MakeStringCommand static FToolMenuStringCommand UToolMenuEntryExtensions::MakeStringCommand(

EToolMenuStringCommandType 	Type, FName 	CustomType, FString 	String

) BreakStringCommand static void UToolMenuEntryExtensions::BreakStringCommand( FToolMenuStringCommand 	InValue, EToolMenuStringCommandType& 	Type, FName& 	CustomType, FString& 	String 	) BreakToolMenuOwner static void UToolMenuEntryExtensions::BreakToolMenuOwner( FToolMenuOwner 	InValue, FName& 	Name 	) GetLabel static FText UToolMenuEntryExtensions::GetLabel( FToolMenuEntry 	Target 	) GetToolTip static FText UToolMenuEntryExtensions::GetToolTip( FToolMenuEntry 	Target 	) InitMenuEntry static FToolMenuEntry UToolMenuEntryExtensions::InitMenuEntry(

const 	FName 	InOwner, const 	FName 	InName, 	FText 	InLabel, 	FText 	InToolTip, 	EToolMenuStringCommandType 	CommandType, const 	FName 	CustomCommandType, 	FString 	CommandString

) MakeScriptSlateIcon static FScriptSlateIcon UToolMenuEntryExtensions::MakeScriptSlateIcon(

const 	FName 	StyleSetName, const 	FName 	StyleName, const 	FName 	SmallStyleName	 = 	NAME_None

) BreakScriptSlateIcon static void UToolMenuEntryExtensions::BreakScriptSlateIcon( FScriptSlateIcon 	InValue, FName& 	StyleSetName, FName& 	StyleName, FName& 	SmallStyleName 	) MakeToolMenuOwner static FToolMenuOwner UToolMenuEntryExtensions::MakeToolMenuOwner( FName 	Name 	) SetIcon static void UToolMenuEntryExtensions::SetIcon( 	FToolMenuEntry& 	Target, const 	FName 	StyleSetName, const 	FName 	StyleName	 = 	NAME_None, const 	FName 	SmallStyleName	 = 	NAME_None 	) SetLabel static void UToolMenuEntryExtensions::SetLabel( FToolMenuEntry& 	Target, FText 	Label 	) SetStringCommand static void UToolMenuEntryExtensions::SetStringCommand( 	FToolMenuEntry& 	Target, 	EToolMenuStringCommandType 	Type, const 	FName 	CustomType, 	FString 	String 	) SetToolTip static void UToolMenuEntryExtensions::SetToolTip( FToolMenuEntry& 	Target, FText 	ToolTip 	) STATIC FUNCTIONS StaticClass static UClass UToolMenuEntryExtensions::StaticClass()
