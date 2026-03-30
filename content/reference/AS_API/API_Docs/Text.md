# Text

## Inheritance

Text

## Description

STATIC VARIABLES EmptyText static const FText Text::EmptyText

## UTILITIES \| STRING

### Conv_TextToString

```
static FString Text::Conv_TextToString(FText InText)
```

Converts localizable text to the string

---

## UTILITIES \| TEXT

### AsCurrencyBase

```
static FText Text::AsCurrencyBase(int BaseValue, FString CurrencyCode)
```

Generate an FText that represents the passed number as currency in the current culture.  BaseVal is specified in the smallest fractional value of the currency and will be converted for formatting according to the selected culture.  Keep in mind the CurrencyCode is completely independent of the culture it's displayed in (and they do not imply one another).  For example: FText::AsCurrencyBase(650, TEXT("EUR")); would return an FText of "<EUR>6.50" in most English cultures (en_US/en_UK) and "6,50<EUR>" in Spanish (es_ES) (where <EUR> is U+20AC)

### AsDate_DateTime

```
static FText Text::AsDate_DateTime(FDateTime InDateTime)
```

Converts a passed in date & time to a text, formatted as a date using an invariant timezone. This will use the given date & time as-is, so it's assumed to already be in the correct timezone.

### AsDateTime_DateTime

```
static FText Text::AsDateTime_DateTime(FDateTime In)
```

Converts a passed in date & time to a text, formatted as a date & time using an invariant timezone. This will use the given date & time as-is, so it's assumed to already be in the correct timezone.

AsCurrency_Integer

### static FText Text::AsCurrency_Integer

```
static FText Text::AsCurrency_Integer(int Value, ERoundingMode RoundingMode, bool bAlwaysSign = false, bool bUseGrouping = true, int MinimumIntegralDigits = 1, int MaximumIntegralDigits = 324, int MinimumFractionalDigits = 0, int MaximumFractionalDigits = 3, FString CurrencyCode = "")
```

Converts a passed in integer to a text formatted as a currency

AsPercent_Float

### static FText Text::AsPercent_Float

```
static FText Text::AsPercent_Float(float32 Value, ERoundingMode RoundingMode, bool bAlwaysSign = false, bool bUseGrouping = true, int MinimumIntegralDigits = 1, int MaximumIntegralDigits = 324, int MinimumFractionalDigits = 0, int MaximumFractionalDigits = 3)
```

Converts a passed in float to a text, formatted as a percent

### AsTime_DateTime

```
static FText Text::AsTime_DateTime(FDateTime In)
```

Converts a passed in date & time to a text, formatted as a time using an invariant timezone. This will use the given date & time as-is, so it's assumed to already be in the correct timezone.

### AsTimespan_Timespan

```
static FText Text::AsTimespan_Timespan(FTimespan InTimespan)
```

Converts a passed in time span to a text, formatted as a time span

### AsTimeZoneDate_DateTime

```
static FText Text::AsTimeZoneDate_DateTime(FDateTime InDateTime, FString InTimeZone = "")
```

Converts a passed in date & time to a text, formatted as a date using the given timezone (default is the local timezone). This will convert the given date & time from UTC to the given timezone (taking into account DST).

### AsTimeZoneDateTime_DateTime

```
static FText Text::AsTimeZoneDateTime_DateTime(FDateTime InDateTime, FString InTimeZone = "")
```

Converts a passed in date & time to a text, formatted as a date & time using the given timezone (default is the local timezone). This will convert the given date & time from UTC to the given timezone (taking into account DST).

### AsTimeZoneTime_DateTime

```
static FText Text::AsTimeZoneTime_DateTime(FDateTime InDateTime, FString InTimeZone = "")
```

Converts a passed in date & time to a text, formatted as a time using the given timezone (default is the local timezone). This will convert the given date & time from UTC to the given timezone (taking into account DST).

### Conv_BoolToText

```
static FText Text::Conv_BoolToText(bool InBool)
```

Converts a boolean value to formatted text, either 'true' or 'false'

### Conv_ByteToText

```
static FText Text::Conv_ByteToText(uint8 Value)
```

Converts a byte value to formatted text

### Conv_ColorToText

```
static FText Text::Conv_ColorToText(FLinearColor InColor)
```

Converts a linear color value to localized formatted text, in the form '(R=,G=,B=,A=)'

Conv_DoubleToText

### static FText Text::Conv_DoubleToText

```
static FText Text::Conv_DoubleToText(float InDouble, ERoundingMode RoundingMode, bool bAlwaysSign = false, bool bUseGrouping = true, int MinimumIntegralDigits = 1, int MaximumIntegralDigits = 324, int MinimumFractionalDigits = 0, int MaximumFractionalDigits = 3)
```

Converts a passed in double to text based on formatting options

Conv_FloatToText

### static FText Text::Conv_FloatToText

```
static FText Text::Conv_FloatToText(float32 Value, ERoundingMode RoundingMode, bool bAlwaysSign = false, bool bUseGrouping = true, int MinimumIntegralDigits = 1, int MaximumIntegralDigits = 324, int MinimumFractionalDigits = 0, int MaximumFractionalDigits = 3)
```

Converts a passed in float to text based on formatting options

### Conv_Int64ToText

```
static FText Text::Conv_Int64ToText(int64 Value, bool bAlwaysSign = false, bool bUseGrouping = true, int MinimumIntegralDigits = 1, int MaximumIntegralDigits = 324)
```

Converts a passed in integer to text based on formatting options

### Conv_IntToText

```
static FText Text::Conv_IntToText(int Value, bool bAlwaysSign = false, bool bUseGrouping = true, int MinimumIntegralDigits = 1, int MaximumIntegralDigits = 324)
```

Converts a passed in integer to text based on formatting options

### Conv_NameToText

```
static FText Text::Conv_NameToText(FName InName)
```

Converts Name to culture invariant text

### Conv_ObjectToText

```
static FText Text::Conv_ObjectToText(UObject InObj)
```

Converts a UObject value to culture invariant text by calling the object's GetName method

### Conv_RotatorToText

```
static FText Text::Conv_RotatorToText(FRotator InRot)
```

Converts a rotator value to localized formatted text, in the form 'P= Y= R='

AsCurrency_Float

### static FText Text::AsCurrency_Float

```
static FText Text::AsCurrency_Float(float32 Value, ERoundingMode RoundingMode, bool bAlwaysSign = false, bool bUseGrouping = true, int MinimumIntegralDigits = 1, int MaximumIntegralDigits = 324, int MinimumFractionalDigits = 0, int MaximumFractionalDigits = 3, FString CurrencyCode = "")
```

Converts a passed in float to a text formatted as a currency

### Conv_StringToText

```
static FText Text::Conv_StringToText(FString InString)
```

Converts string to culture invariant text. Use Format or Make Literal Text to create localizable text

### Conv_TransformToText

```
static FText Text::Conv_TransformToText(FTransform InTrans)
```

Converts a transform value to localized formatted text, in the form 'Translation: X= Y= Z= Rotation: P= Y= R= Scale: X= Y= Z='

### Conv_Vector2dToText

```
static FText Text::Conv_Vector2dToText(FVector2D InVec)
```

Converts a vector2d value to localized formatted text, in the form 'X= Y='

### Conv_VectorToText

```
static FText Text::Conv_VectorToText(FVector InVec)
```

Converts a vector value to localized formatted text, in the form 'X= Y= Z='

### EqualEqual_IgnoreCase_TextText

```
static bool Text::EqualEqual_IgnoreCase_TextText(FText A, FText B)
```

Returns true if A and B are linguistically equal (A == B), ignoring case.

### EqualEqual_TextText

```
static bool Text::EqualEqual_TextText(FText A, FText B)
```

Returns true if A and B are linguistically equal (A == B).

### FindTextInLocalizationTable

```
static bool Text::FindTextInLocalizationTable(FString Namespace, FString Key, FText& OutText)
```

Attempts to find existing Text using the representation found in the loc tables for the specified namespace and key.

### GetEmptyText

```
static FText Text::GetEmptyText()
```

Returns an empty piece of text.

### NotEqual_IgnoreCase_TextText

```
static bool Text::NotEqual_IgnoreCase_TextText(FText A, FText B)
```

Returns true if A and B are linguistically not equal (A != B), ignoring case.

### NotEqual_TextText

```
static bool Text::NotEqual_TextText(FText A, FText B)
```

Returns true if A and B are linguistically not equal (A != B).

### StringTableIdAndKeyFromText

```
static bool Text::StringTableIdAndKeyFromText(FText Text, FName& OutTableId, FString& OutKey)
```

Attempts to find the String Table ID and key used by the given text.

**Returns**

True if the String Table ID and key were found, false otherwise.

TextFromStringTable
static FText Text::TextFromStringTable(
const 	FName 	TableId,
	FString 	Key
	)

Attempts to create a text instance from a string table ID and key.  Note: This exists to allow programmatic ‎look-up of a string table entry from dynamic content - you should favor setting your string table reference on a text property or pin wherever possible as it is significantly more robust (see "Make Literal Text").

**Returns**

The found text, or a dummy text if the entry could not be found.

TextIsCultureInvariant
static bool Text::TextIsCultureInvariant(
FText 	InText
	)

Returns true if text is culture invariant.

TextIsEmpty
static bool Text::TextIsEmpty(
FText 	InText
	)

Returns true if text is empty.

TextIsFromStringTable
static bool Text::TextIsFromStringTable(
FText 	Text
	)

Returns true if the given text is referencing a string table.

TextIsTransient
static bool Text::TextIsTransient(
FText 	InText
	)

Returns true if text is transient.

TextToLower
static FText Text::TextToLower(
FText 	InText
	)

Transforms the text to lowercase in a culture correct way.  Note: The returned instance is linked to the original and will be rebuilt if the active culture is changed.

TextToUpper
static FText Text::TextToUpper(
FText 	InText
	)

Transforms the text to uppercase in a culture correct way.  Note: The returned instance is linked to the original and will be rebuilt if the active culture is changed.

TextTrimPreceding
static FText Text::TextTrimPreceding(
FText 	InText
	)

Removes whitespace characters from the front of the text.

TextTrimPrecedingAndTrailing
static FText Text::TextTrimPrecedingAndTrailing(
FText 	InText
	)

Removes whitespace characters from the front and end of the text.

TextTrimTrailing
static FText Text::TextTrimTrailing(
FText 	InText
	)

Removes trailing whitespace characters.
