# FEventReply

## Inheritance

FEventReply → FUNCTIONS → ReleaseMouseLock

## Description

FEventReply& ReleaseMouseLock() SetUserFocus FEventReply& SetUserFocus( UWidget 	Widget, EFocusCause 	FocusCause	 = 	EFocusCause :: SetDirectly, bool 	bAllUsers	 = 	false 	) ClearUserFocus FEventReply& ClearUserFocus( bool 	bAllUsers	 = 	false 	) CaptureMouse FEventReply& CaptureMouse( UWidget 	Widget 	) UseHighPrecisionMouseMovement FEventReply& UseHighPrecisionMouseMovement( UWidget 	Widget 	) ReleaseMouseCapture FEventReply& ReleaseMouseCapture() LockMouseToWidget FEventReply& LockMouseToWidget( UWidget 	Widget 	) PreventThrottling FEventReply& PreventThrottling() SetMousePos FEventReply& SetMousePos( FIntPoint 	NewMousePos 	) SetNavigation FEventReply& SetNavigation( EUINavigation 	NavigationType, ENavigationGenesis 	Genesis, ENavigationSource 	Source	 = 	ENavigationSource :: FocusedWidget 	) SetNavigation FEventReply& SetNavigation(

UWidget 	NavigationDestination, ENavigationGenesis 	Genesis, ENavigationSource 	Source	 = 	ENavigationSource :: FocusedWidget

) opAssign FEventReply& opAssign( FEventReply 	Other 	) STATIC FUNCTIONS Unhandled static FEventReply FEventReply::Unhandled() Handled static FEventReply FEventReply::Handled()
