# String

## Inheritance

String

## UTILITIES \| STRING

### Conv_Vector3fToString

```
static FString String::Conv_Vector3fToString(FVector3f InVec)
```

Converts a float vector value to a string, in the form 'X= Y= Z='

### BuildString_Color

```
static FString String::BuildString_Color(FString AppendTo, FString Prefix, FLinearColor InColor, FString Suffix)
```

Converts a color->string, creating a new string in the form AppendTo+Prefix+InColor+Suffix

**Parameters**

AppendTo
FString

An existing string to use as the start of the conversion string

Prefix
FString

A string to use as a prefix, after the AppendTo string

InColor
FLinearColor

The linear color value to convert. Uses the standard ToString conversion

Suffix
FString

A suffix to append to the end of the conversion string

**Returns**

A new string built from the passed parameters

BuildString_Double
static FString String::BuildString_Double(
FString 	AppendTo,
FString 	Prefix,
float 	InDouble,
FString 	Suffix
	)

Converts a double->string, create a new string in the form AppendTo+Prefix+InDouble+Suffix

**Parameters**

AppendTo
FString

An existing string to use as the start of the conversion string

Prefix
FString

A string to use as a prefix, after the AppendTo string

InDouble
float

The double value to convert

Suffix
FString

A suffix to append to the end of the conversion string

**Returns**

A new string built from the passed parameters

BuildString_Int
static FString String::BuildString_Int(
FString 	AppendTo,
FString 	Prefix,
int 	InInt,
FString 	Suffix
	)

Converts a int->string, creating a new string in the form AppendTo+Prefix+InInt+Suffix

**Parameters**

AppendTo
FString

An existing string to use as the start of the conversion string

Prefix
FString

A string to use as a prefix, after the AppendTo string

InInt
int

The int value to convert

Suffix
FString

A suffix to append to the end of the conversion string

**Returns**

A new string built from the passed parameters

BuildString_IntVector
static FString String::BuildString_IntVector(
FString 	AppendTo,
FString 	Prefix,
FIntVector 	InIntVector,
FString 	Suffix
	)

Converts an IntVector->string, creating a new string in the form AppendTo+Prefix+InIntVector+Suffix

**Parameters**

AppendTo
FString

An existing string to use as the start of the conversion string

Prefix
FString

A string to use as a prefix, after the AppendTo string

InIntVector
FIntVector

The intVector value to convert. Uses the standard FVector::ToString conversion

Suffix
FString

A suffix to append to the end of the conversion string

**Returns**

A new string built from the passed parameters

BuildString_Name
static FString String::BuildString_Name(
FString 	AppendTo,
FString 	Prefix,
FName 	InName,
FString 	Suffix
	)

Converts a color->string, creating a new string in the form AppendTo+Prefix+InName+Suffix

**Parameters**

AppendTo
FString

An existing string to use as the start of the conversion string

Prefix
FString

A string to use as a prefix, after the AppendTo string

InName
FName

The name value to convert

Suffix
FString

A suffix to append to the end of the conversion string

**Returns**

A new string built from the passed parameters

BuildString_Object
static FString String::BuildString_Object(
FString 	AppendTo,
FString 	Prefix,
UObject 	InObj,
FString 	Suffix
	)

Converts a object->string, creating a new string in the form AppendTo+Prefix+object name+Suffix

**Parameters**

AppendTo
FString

An existing string to use as the start of the conversion string

Prefix
FString

A string to use as a prefix, after the AppendTo string

InObj
UObject

The object to convert. Will insert the name of the object into the conversion string

Suffix
FString

A suffix to append to the end of the conversion string

**Returns**

A new string built from the passed parameters

BuildString_Rotator
static FString String::BuildString_Rotator(
FString 	AppendTo,
FString 	Prefix,
FRotator 	InRot,
FString 	Suffix
	)

Converts a rotator->string, creating a new string in the form AppendTo+Prefix+InRot+Suffix

**Parameters**

AppendTo
FString

An existing string to use as the start of the conversion string

Prefix
FString

A string to use as a prefix, after the AppendTo string

InRot
FRotator

The rotator value to convert. Uses the standard ToString conversion

Suffix
FString

A suffix to append to the end of the conversion string

**Returns**

A new string built from the passed parameters

BuildString_Vector
static FString String::BuildString_Vector(
FString 	AppendTo,
FString 	Prefix,
FVector 	InVector,
FString 	Suffix
	)

Converts a vector->string, creating a new string in the form AppendTo+Prefix+InVector+Suffix

**Parameters**

AppendTo
FString

An existing string to use as the start of the conversion string

Prefix
FString

A string to use as a prefix, after the AppendTo string

InVector
FVector

The vector value to convert. Uses the standard FVector::ToString conversion

Suffix
FString

A suffix to append to the end of the conversion string

**Returns**

A new string built from the passed parameters

BuildString_Vector2d
static FString String::BuildString_Vector2d(
FString 	AppendTo,
FString 	Prefix,
FVector2D 	InVector2d,
FString 	Suffix
	)

Converts a vector2d->string, creating a new string in the form AppendTo+Prefix+InVector2d+Suffix

**Parameters**

AppendTo
FString

An existing string to use as the start of the conversion string

Prefix
FString

A string to use as a prefix, after the AppendTo string

InVector2d
FVector2D

The vector2d value to convert. Uses the standard FVector2D::ToString conversion

Suffix
FString

A suffix to append to the end of the conversion string

**Returns**

A new string built from the passed parameters

Concat_StrStr
static FString String::Concat_StrStr(
FString 	A,
FString 	B
	)

Concatenates two strings together to make a new string

**Parameters**

A
FString

The original string

B
FString

The string to append to A

**Returns**

A new string which is the concatenation of A+B

Contains
static bool String::Contains(
FString 	SearchIn,
FString 	Substring,
bool 	bUseCase	 = 	false,
bool 	bSearchFromEnd	 = 	false
	)

Returns whether this string contains the specified substring.

**Returns**

Returns whether the string contains the substring

Conv_BoolToString
static FString String::Conv_BoolToString(
bool 	InBool
	)

Converts a boolean value to a string, either 'true' or 'false'

Conv_ByteToString
static FString String::Conv_ByteToString(
uint8 	InByte
	)

Converts a byte value to a string

Conv_ColorToString
static FString String::Conv_ColorToString(
FLinearColor 	InColor
	)

Converts a linear color value to a string, in the form '(R=,G=,B=,A=)'

Conv_DoubleToString
static FString String::Conv_DoubleToString(
float 	InDouble
	)

Converts a double value to a string

Conv_Int64ToString
static FString String::Conv_Int64ToString(
int64 	InInt
	)

Converts an 64-bit integer value to a string

Conv_IntPointToString
static FString String::Conv_IntPointToString(
FIntPoint 	InIntPoint
	)

Converts an IntPoint value to a string, in the form 'X= Y='

Conv_IntToString
static FString String::Conv_IntToString(
int 	InInt
	)

Converts an integer value to a string

Conv_IntVectorToString
static FString String::Conv_IntVectorToString(
FIntVector 	InIntVec
	)

Converts an IntVector value to a string, in the form 'X= Y= Z='

Conv_MatrixToString
static FString String::Conv_MatrixToString(
FMatrix 	InMatrix
	)

Converts a name value to a string

Conv_NameToString
static FString String::Conv_NameToString(
FName 	InName
	)

Converts a name value to a string

Conv_ObjectToString
static FString String::Conv_ObjectToString(
UObject 	InObj
	)

Converts a UObject value to a string by calling the object's GetName method

Conv_RotatorToString
static FString String::Conv_RotatorToString(
FRotator 	InRot
	)

Converts a rotator value to a string, in the form 'P= Y= R='

Conv_StringToColor
static void String::Conv_StringToColor(
FString 	InString,
FLinearColor& 	OutConvertedColor,
bool& 	OutIsValid
	)

Convert String Back To Color. IsValid indicates whether or not the string could be successfully converted.

Conv_StringToDouble
static float String::Conv_StringToDouble(
FString 	InString
	)

Converts a string to a double value

Conv_StringToInt
static int String::Conv_StringToInt(
FString 	InString
	)

Converts a string to a int value

Conv_StringToName
static FName String::Conv_StringToName(
FString 	InString
	)

Converts a string to a name value

Conv_StringToRotator
static void String::Conv_StringToRotator(
FString 	InString,
FRotator& 	OutConvertedRotator,
bool& 	OutIsValid
	)

Convert String Back To Rotator. IsValid indicates whether or not the string could be successfully converted.

Conv_StringToVector
static void String::Conv_StringToVector(
FString 	InString,
FVector& 	OutConvertedVector,
bool& 	OutIsValid
	)

Convert String Back To Vector. IsValid indicates whether or not the string could be successfully converted.

Conv_StringToVector2D
static void String::Conv_StringToVector2D(
FString 	InString,
FVector2D& 	OutConvertedVector2D,
bool& 	OutIsValid
	)

Convert String Back To Vector2D. IsValid indicates whether or not the string could be successfully converted.

Conv_StringToVector3f
static void String::Conv_StringToVector3f(
FString 	InString,
FVector3f& 	OutConvertedVector,
bool& 	OutIsValid
	)

Convert String Back To Float Vector. IsValid indicates whether or not the string could be successfully converted.

Conv_TransformToString
static FString String::Conv_TransformToString(
FTransform 	InTrans
	)

Converts a transform value to a string, in the form 'Translation: X= Y= Z= Rotation: P= Y= R= Scale: X= Y= Z='

Conv_Vector2dToString
static FString String::Conv_Vector2dToString(
FVector2D 	InVec
	)

Converts a vector2d value to a string, in the form 'X= Y='

BuildString_Bool
static FString String::BuildString_Bool(
FString 	AppendTo,
FString 	Prefix,
bool 	InBool,
FString 	Suffix
	)

Converts a boolean->string, creating a new string in the form AppendTo+Prefix+InBool+Suffix

**Parameters**

AppendTo
FString

An existing string to use as the start of the conversion string

Prefix
FString

A string to use as a prefix, after the AppendTo string

InBool
bool

The bool value to convert. Will add "true" or "false" to the conversion string

Suffix
FString

A suffix to append to the end of the conversion string

**Returns**

A new string built from the passed parameters

Conv_VectorToString
static FString String::Conv_VectorToString(
FVector 	InVec
	)

Converts a vector value to a string, in the form 'X= Y= Z='

CullArray
static int String::CullArray(
FString 	SourceString,
TArray<FString>& 	InArray
	)

Takes an array of strings and removes any zero length entries.

**Parameters**

InArray
TArray<FString>&

The array to cull

**Returns**

The number of elements left in InArray

EndsWith
static bool String::EndsWith(
FString 	SourceString,
FString 	InSuffix,
ESearchCase 	SearchCase	 = 	ESearchCase :: IgnoreCase
	)

Test whether this string ends with given string.

**Parameters**

SearchCase
ESearchCase

Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase )

**Returns**

true if this string ends with specified text, false otherwise

EqualEqual_StriStri
static bool String::EqualEqual_StriStri(
FString 	A,
FString 	B
	)

Test if the input strings are equal (A == B), ignoring case

**Parameters**

A
FString

The string to compare against

B
FString

The string to compare

**Returns**

True if the strings are equal, false otherwise

EqualEqual_StrStr
static bool String::EqualEqual_StrStr(
FString 	A,
FString 	B
	)

Test if the input strings are equal (A == B)

**Parameters**

A
FString

The string to compare against

B
FString

The string to compare

**Returns**

True if the strings are equal, false otherwise

FindSubstring
static int String::FindSubstring(
FString 	SearchIn,
FString 	Substring,
bool 	bUseCase	 = 	false,
bool 	bSearchFromEnd	 = 	false,
int 	StartPosition	 = 	- 1
	)

Finds the starting index of a substring in the a specified string

**Parameters**

SearchIn
FString

The string to search within

Substring
FString

The string to look for in the SearchIn string

bUseCase
bool

Whether or not to be case-sensitive

bSearchFromEnd
bool

Whether or not to start the search from the end of the string instead of the beginning

StartPosition
int

The position to start the search from

**Returns**

The index (starting from 0 if bSearchFromEnd is false) of the first occurence of the substring

GetCharacterArrayFromString
static TArray<FString> String::GetCharacterArrayFromString(
FString 	SourceString
	)

Returns an array that contains one entry for each character in SourceString

**Parameters**

SourceString
FString

The string to break apart into characters

**Returns**

An array containing one entry for each character in SourceString

GetCharacterAsNumber
static int String::GetCharacterAsNumber(
FString 	SourceString,
int 	Index	 = 	0
	)

Gets a single character from the string (as an integer)

**Parameters**

SourceString
FString

The string to convert

Index
int

Location of the character whose value is required

**Returns**

The integer value of the character or 0 if index is out of range

GetSubstring
static FString String::GetSubstring(
FString 	SourceString,
int 	StartIndex	 = 	0,
int 	Length	 = 	1
	)

Returns a substring from the string starting at the specified position

**Parameters**

SourceString
FString

The string to get the substring from

StartIndex
int

The location in SourceString to use as the start of the substring

Length
int

The length of the requested substring

**Returns**

The requested substring

IsEmpty
static bool String::IsEmpty(
FString 	InString
	)

Returns true if the string is empty

**Parameters**

InString
FString

The string to check

**Returns**

Whether or not the string is empty

IsNumeric
static bool String::IsNumeric(
FString 	SourceString
	)

Checks if a string contains only numeric characters *

**Parameters**

SourceString
FString

The string to check *

**Returns**

true if the string only contains numeric characters

JoinStringArray
static FString String::JoinStringArray(
TArray<FString> 	SourceArray,
FString 	Separator	 = 	""
	)

Concatenates an array of strings into a single string.

**Parameters**

SourceArray
TArray<FString>

The array of strings to concatenate.

Separator
FString

The string used to separate each element.

**Returns**

The final, joined, separated string.

Left
static FString String::Left(
FString 	SourceString,
int 	Count
	)

Returns the left most given number of characters

LeftChop
static FString String::LeftChop(
FString 	SourceString,
int 	Count
	)

Returns the left most characters from the string chopping the given number of characters from the end

LeftPad
static FString String::LeftPad(
FString 	SourceString,
int 	ChCount
	)

Pad the left of this string for a specified number of characters *

**Parameters**

SourceString
FString

The string to pad *

ChCount
int

Amount of padding required *

**Returns**

The padded string

Len
static int String::Len(
FString 	S
	)

Returns the number of characters in the string

**Returns**

The number of chars in the string

MatchesWildcard
static bool String::MatchesWildcard(
FString 	SourceString,
FString 	Wildcard,
ESearchCase 	SearchCase	 = 	ESearchCase :: IgnoreCase
	)

Searches this string for a given wild card

**Parameters**

Wildcard
FString

*?-type wildcard

SearchCase
ESearchCase

Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase )

**Returns**

true if this string matches the *?-type wildcard given.

Mid
static FString String::Mid(
FString 	SourceString,
int 	Start,
int 	Count
	)

Returns the substring from Start position for Count characters.

NotEqual_StriStri
static bool String::NotEqual_StriStri(
FString 	A,
FString 	B
	)

Test if the input string are not equal (A != B), ignoring case differences

**Parameters**

A
FString

The string to compare against

B
FString

The string to compare

**Returns**

Returns true if the input strings are not equal, false if they are equal

NotEqual_StrStr
static bool String::NotEqual_StrStr(
FString 	A,
FString 	B
	)

Test if the input string are not equal (A != B)

**Parameters**

A
FString

The string to compare against

B
FString

The string to compare

**Returns**

Returns true if the input strings are not equal, false if they are equal

ParseIntoArray
static TArray<FString> String::ParseIntoArray(
FString 	SourceString,
FString 	Delimiter	 = 	"",
bool 	CullEmptyStrings	 = 	true
	)

Gets an array of strings from a source string divided up by a separator and empty strings can optionally be culled.

**Parameters**

SourceString
FString

The string to chop up

Delimiter
FString

The string to delimit on

CullEmptyStrings
bool

= true - Cull (true) empty strings or add them to the array (false)

**Returns**

The array of string that have been separated

Replace
static FString String::Replace(
FString 	SourceString,
FString 	From,
FString 	To,
ESearchCase 	SearchCase	 = 	ESearchCase :: IgnoreCase
	)

Replace all occurrences of a substring in this string

**Parameters**

From
FString

substring to replace

To
FString

substring to replace From with

SearchCase
ESearchCase

Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase )

**Returns**

a copy of this string with the replacement made

ReplaceInline
static int String::ReplaceInline(
FString& 	SourceString,
FString 	SearchText,
FString 	ReplacementText,
ESearchCase 	SearchCase	 = 	ESearchCase :: IgnoreCase
	)

Replace all occurrences of SearchText with ReplacementText in this string.

**Parameters**

SearchText
FString

the text that should be removed from this string

ReplacementText
FString

the text to insert in its place

SearchCase
ESearchCase

Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase )

**Returns**

the number of occurrences of SearchText that were replaced.

Reverse
static FString String::Reverse(
FString 	SourceString
	)

Returns a copy of this string, with the characters in reverse order

Right
static FString String::Right(
FString 	SourceString,
int 	Count
	)

Returns the string to the right of the specified location, counting back from the right (end of the word).

RightChop
static FString String::RightChop(
FString 	SourceString,
int 	Count
	)

Returns the string to the right of the specified location, counting forward from the left (from the beginning of the word).

RightPad
static FString String::RightPad(
FString 	SourceString,
int 	ChCount
	)

Pad the right of this string for a specified number of characters *

**Parameters**

SourceString
FString

The string to pad *

ChCount
int

Amount of padding required *

**Returns**

The padded string

Split
static bool String::Split(
FString 	SourceString,
FString 	InStr,
FString& 	LeftS,
FString& 	RightS,
ESearchCase 	SearchCase	 = 	ESearchCase :: IgnoreCase,
ESearchDir 	SearchDir	 = 	ESearchDir :: FromStart
	)

Splits this string at given string position case sensitive.

**Parameters**

InStr
FString

The string to search and split at

LeftS
FString&

out the string to the left of InStr, not updated if return is false

RightS
FString&

out the string to the right of InStr, not updated if return is false

SearchCase
ESearchCase

Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase )

SearchDir
ESearchDir

Indicates whether the search starts at the begining or at the end ( defaults to ESearchDir::FromStart )

**Returns**

true if string is split, otherwise false

StartsWith
static bool String::StartsWith(
FString 	SourceString,
FString 	InPrefix,
ESearchCase 	SearchCase	 = 	ESearchCase :: IgnoreCase
	)

Test whether this string starts with given string.

**Parameters**

SearchCase
ESearchCase

Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase )

**Returns**

true if this string begins with specified text, false otherwise

TimeSecondsToString
static FString String::TimeSecondsToString(
float32 	InSeconds
	)

Convert a number of seconds into minutes:seconds.milliseconds format string (including leading zeroes)

**Returns**

A new string built from the seconds parameter

ToLower
static FString String::ToLower(
FString 	SourceString
	)

Returns a string converted to Lower case

**Parameters**

SourceString
FString

The string to convert

**Returns**

The string in lower case

ToUpper
static FString String::ToUpper(
FString 	SourceString
	)

Returns a string converted to Upper case

**Parameters**

SourceString
FString

The string to convert

**Returns**

The string in upper case

Trim
static FString String::Trim(
FString 	SourceString
	)

Removes whitespace characters from the front of this string.

TrimTrailing
static FString String::TrimTrailing(
FString 	SourceString
	)

Removes trailing whitespace characters
