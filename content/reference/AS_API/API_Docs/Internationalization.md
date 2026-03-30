# Internationalization

## Inheritance

Internationalization

## Description

STATIC VARIABLES CurrentLanguage static const FString Internationalization::CurrentLanguage CurrentLocale static const FString Internationalization::CurrentLocale CurrentCulture static const FString Internationalization::CurrentCulture

## UTILITIES \| INTERNATIONALIZATION

### GetNativeCulture

```
static FString Internationalization::GetNativeCulture(ELocalizedTextSourceCategory TextCategory)
```

Get the native culture for the given localization category.

**Returns**

The culture as an IETF language tag (eg, "zh-Hans-CN").

GetCultureDisplayName
static FString Internationalization::GetCultureDisplayName(
FString 	Culture,
bool 	Localized	 = 	true
	)

Get the display name of the given culture.

**Parameters**

Culture
FString

The culture to get the display name of, as an IETF language tag (eg, "zh-Hans-CN")

Localized
bool

True to get the localized display name (the name of the culture in its own language), or False to get the display name in the current language.

**Returns**

The display name of the culture, or the given culture code on failure.

GetCurrentAssetGroupCulture
static FString Internationalization::GetCurrentAssetGroupCulture(
const 	FName 	AssetGroup
	)

Get the given asset group category culture.  Note: Returns the current language if the group category doesn't have a culture override.

**Parameters**

AssetGroup
const FName

The asset group to get the culture for.

**Returns**

The culture as an IETF language tag (eg, "zh-Hans-CN").

GetCurrentCulture
static FString Internationalization::GetCurrentCulture()

Get the current culture as an IETF language tag: - A two-letter ISO 639-1 language code (eg, "zh").  - An optional four-letter ISO 15924 script code (eg, "Hans").  - An optional two-letter ISO 3166-1 country code (eg, "CN").  Note: This function exists for legacy API parity with SetCurrentCulture and is equivalent to GetCurrentLanguage.

**Returns**

The culture as an IETF language tag (eg, "zh-Hans-CN").

GetCurrentLanguage
static FString Internationalization::GetCurrentLanguage()

Get the current language (for localization) as an IETF language tag: - A two-letter ISO 639-1 language code (eg, "zh").  - An optional four-letter ISO 15924 script code (eg, "Hans").  - An optional two-letter ISO 3166-1 country code (eg, "CN").

**Returns**

The language as an IETF language tag (eg, "zh-Hans-CN").

GetCurrentLocale
static FString Internationalization::GetCurrentLocale()

Get the current locale (for internationalization) as an IETF language tag: - A two-letter ISO 639-1 language code (eg, "zh").  - An optional four-letter ISO 15924 script code (eg, "Hans").  - An optional two-letter ISO 3166-1 country code (eg, "CN").

**Returns**

The locale as an IETF language tag (eg, "zh-Hans-CN").

GetLocalizedCultures
static TArray<FString> Internationalization::GetLocalizedCultures(
bool 	IncludeGame	 = 	true,
bool 	IncludeEngine	 = 	false,
bool 	IncludeEditor	 = 	false,
bool 	IncludeAdditional	 = 	false
	)

Get the list of cultures that have localization data available for them.

**Parameters**

IncludeGame
bool

Check for localized game resources.

IncludeEngine
bool

Check for localized engine resources.

IncludeEditor
bool

Check for localized editor resources.

IncludeAdditional
bool

Check for localized additional (eg, plugin) resources.

**Returns**

The list of cultures as IETF language tags (eg, "zh-Hans-CN").

ClearCurrentAssetGroupCulture
static void Internationalization::ClearCurrentAssetGroupCulture(
const 	FName 	AssetGroup,
	bool 	SaveToConfig	 = 	false
	)

Clear the given asset group category culture.

**Parameters**

AssetGroup
const FName

The asset group to clear the culture for.

SaveToConfig
bool

If true, save the new setting to the users' "GameUserSettings" config so that it persists after a reload.

GetSuitableCulture
static FString Internationalization::GetSuitableCulture(
TArray<FString> 	AvailableCultures,
FString 	CultureToMatch,
FString 	FallbackCulture	 = 	""
	)

Given a list of available cultures, try and find the most suitable culture from the list based on culture prioritization.  eg) If your list was [en, fr, de] and the given culture was "en-US", this function would return "en".  eg) If your list was [zh, ar, pl] and the given culture was "en-US", this function would return the fallback culture.

**Parameters**

AvailableCultures
TArray<FString>

List of available cultures to filter against (see GetLocalizedCultures).

CultureToMatch
FString

Culture to try and match (see GetCurrentLanguage).

FallbackCulture
FString

The culture to return if there is no suitable match in the list (typically your native culture, see GetNativeCulture).

**Returns**

The culture as an IETF language tag (eg, "zh-Hans-CN").

SetCurrentAssetGroupCulture
static bool Internationalization::SetCurrentAssetGroupCulture(
const 	FName 	AssetGroup,
	FString 	Culture,
	bool 	SaveToConfig	 = 	false
	)

Set the given asset group category culture from an IETF language tag (eg, "zh-Hans-CN").

**Parameters**

AssetGroup
const FName

The asset group to set the culture for.

Culture
FString

The culture to set, as an IETF language tag (eg, "zh-Hans-CN").

SaveToConfig
bool

If true, save the new setting to the users' "GameUserSettings" config so that it persists after a reload.

**Returns**

True if the culture was set, false otherwise.

SetCurrentCulture
static bool Internationalization::SetCurrentCulture(
FString 	Culture,
bool 	SaveToConfig	 = 	false
	)

Set the current culture.  Note: This function is a sledgehammer, and will set both the language and locale, as well as clear out any asset group cultures that may be set.

**Parameters**

Culture
FString

The culture to set, as an IETF language tag (eg, "zh-Hans-CN").

SaveToConfig
bool

If true, save the new setting to the users' "GameUserSettings" config so that it persists after a reload.

**Returns**

True if the culture was set, false otherwise.

SetCurrentLanguage
static bool Internationalization::SetCurrentLanguage(
FString 	Culture,
bool 	SaveToConfig	 = 	false
	)

Set only the current language (for localization).  Note: Unless you're doing something advanced, you likely want SetCurrentLanguageAndLocale or SetCurrentCulture instead.

**Parameters**

Culture
FString

The language to set, as an IETF language tag (eg, "zh-Hans-CN").

SaveToConfig
bool

If true, save the new setting to the users' "GameUserSettings" config so that it persists after a reload.

**Returns**

True if the language was set, false otherwise.

SetCurrentLanguageAndLocale
static bool Internationalization::SetCurrentLanguageAndLocale(
FString 	Culture,
bool 	SaveToConfig	 = 	false
	)

Set the current language (for localization) and locale (for internationalization).

**Parameters**

Culture
FString

The language and locale to set, as an IETF language tag (eg, "zh-Hans-CN").

SaveToConfig
bool

If true, save the new setting to the users' "GameUserSettings" config so that it persists after a reload.

**Returns**

True if the language and locale were set, false otherwise.

SetCurrentLocale
static bool Internationalization::SetCurrentLocale(
FString 	Culture,
bool 	SaveToConfig	 = 	false
	)

Set only the current locale (for internationalization).  Note: Unless you're doing something advanced, you likely want SetCurrentLanguageAndLocale or SetCurrentCulture instead.

**Parameters**

Culture
FString

The locale to set, as an IETF language tag (eg, "zh-Hans-CN").

SaveToConfig
bool

If true, save the new setting to the users' "GameUserSettings" config so that it persists after a reload.

**Returns**

True if the locale was set, false otherwise.
