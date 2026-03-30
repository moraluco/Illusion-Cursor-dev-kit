# UGeneralProjectSettings

**Visibility:** public

## Inheritance

UObject → UGeneralProjectSettings → ABOUT → ProjectVersion

## Description

FString ProjectVersion

The project's version number.

ProjectID FGuid ProjectID

The project's unique identifier.

Description FString Description

The project's description text.

ProjectName FString ProjectName

The project's non-localized name.

## DISPLAYED

### ProjectDebugTitleInfo

```
FText ProjectDebugTitleInfo
```

Additional data to be displayed on the window title bar in non-shipping configurations (can include the tokens {GameName}, {PlatformArchitecture}, {BuildConfiguration} or {RHIName}, which will be replaced with the specified text)

### ProjectDisplayedTitle

```
FText ProjectDisplayedTitle
```

The project's title as displayed on the window title bar (can include the tokens {GameName}, {PlatformArchitecture}, {BuildConfiguration} or {RHIName}, which will be replaced with the specified text)

---

## LEGAL

### LicensingTerms

```
FString LicensingTerms
```

The project's licensing terms.

### CopyrightNotice

```
FString CopyrightNotice
```

The project's copyright and/or trademark notices.

### PrivacyPolicy

```
FString PrivacyPolicy
```

The project's privacy policy.

---

## PUBLISHER

### CompanyName

```
FString CompanyName
```

The name of the company (author, provider) that created the project.

### CompanyDistinguishedName

```
FString CompanyDistinguishedName
```

The Distinguished Name of the company (author, provider) that created the project, which is used by publishing tools on some platforms.

### Homepage

```
FString Homepage
```

The project's homepage URL.

### SupportContact

```
FString SupportContact
```

The project's support contact information.

---

## SETTINGS

### bUseBorderlessWindow

```
bool bUseBorderlessWindow
```

Should the game use a borderless Slate window instead of a window with system title bar and border

### bStartInVR

```
bool bStartInVR
```

Should the game attempt to start in VR, regardless of whether -vr was set on the commandline

### bAllowWindowResize

```
bool bAllowWindowResize
```

Should the user be allowed to resize the window used by the game, when not using full screen

### bAllowClose

```
bool bAllowClose
```

Should a close button be shown for the game's window, when not using full screen

### bAllowMaximize

```
bool bAllowMaximize
```

Should a maximize button be shown for the game's window, when not using full screen

### bAllowMinimize

```
bool bAllowMinimize
```

Should a minimize button be shown for the game's window, when not using full screen

### bShouldWindowPreserveAspectRatio

```
bool bShouldWindowPreserveAspectRatio
```

Should the game's window preserve its aspect ratio when resized by user.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGeneralProjectSettings::StaticClass()
```
