# Guid

## Inheritance

Guid → GUID → EqualEqual_GuidGuid

## Description

static bool Guid::EqualEqual_GuidGuid( FGuid 	A, FGuid 	B 	)

Returns true if the values are equal (A == B)

Invalidate_Guid static void Guid::Invalidate_Guid( FGuid& 	InGuid 	)

Invalidates the given GUID

IsValid_Guid static bool Guid::IsValid_Guid( FGuid 	InGuid 	)

Checks whether the given GUID is valid

NewGuid static FGuid Guid::NewGuid()

Returns a new unique GUID

NotEqual_GuidGuid static bool Guid::NotEqual_GuidGuid( FGuid 	A, FGuid 	B 	)

Returns true if the values are not equal (A != B)

Parse_StringToGuid static void Guid::Parse_StringToGuid( FString 	GuidString, FGuid& 	OutGuid, bool& 	Success 	)

Converts a String of format EGuidFormats to a Guid. Returns Guid OutGuid, Returns bool Success

Conv_GuidToString static FString Guid::Conv_GuidToString( FGuid 	InGuid 	)

Converts a GUID value to a string, in the form 'A-B-C-D'
