# MobilePatching

## Inheritance

MobilePatching

## Description

STATIC VARIABLES SupportedPlatformNames static const TArray<FString> MobilePatching::SupportedPlatformNames ActiveDeviceProfileName static const FString MobilePatching::ActiveDeviceProfileName MOBILE PATCHING GetInstalledContent static UMobileInstalledContent MobilePatching::GetInstalledContent( FString 	InstallDirectory 	)

Get the installed content. Will return non-null object if there is an installed content at specified directory User can choose to mount installed content into the game

GetSupportedPlatformNames static TArray<FString> MobilePatching::GetSupportedPlatformNames()

Get the list of supported platform names on this device. Example: Android_ETC2, Android_ASTC

HasActiveWiFiConnection static bool MobilePatching::HasActiveWiFiConnection()

Whether WiFi connection is currently available

RequestContent static void MobilePatching::RequestContent(

FString 	RemoteManifestURL, FString 	CloudURL, FString 	InstallDirectory, FOnRequestContentSucceeded 	OnSucceeded	 = 	FOnRequestContentSucceeded ( ), FOnRequestContentFailed 	OnFailed	 = 	FOnRequestContentFailed ( )

)

Attempt to download manifest file using specified manifest URL.  On success it will return an object that represents remote content. This object can be queried for additional information, like total content size, download size, etc.  User can choose to download and install remote content.

Parameters RemoteManifestURL FString

: URL from where manifest file can be downloaded. (http://​my-server​.com​/awesomecontent​.manifest)

CloudURL FString

:  URL from where content chunk data can be downloaded. (http://​my-server​.com​/awesomecontent​/clouddir)

GetActiveDeviceProfileName static FString MobilePatching::GetActiveDeviceProfileName()

Get the name of currently selected device profile name
