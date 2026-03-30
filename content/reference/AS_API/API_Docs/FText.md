# FText

## Inheritance

FText → FUNCTIONS → IdenticalTo

## Description

bool IdenticalTo( FText 	Other, ETextIdenticalModeFlags 	CompareModeFlags	 = 	ETextIdenticalModeFlags :: None 	) const IsEmptyOrWhitespace bool IsEmptyOrWhitespace() const IsTransient bool IsTransient() const IsCultureInvariant bool IsCultureInvariant() const IsInitializedFromString bool IsInitializedFromString() const IsFromStringTable bool IsFromStringTable() const IsEmpty bool IsEmpty() const opAssign FText& opAssign( FText 	Other 	) ToString FString ToString() const STATIC FUNCTIONS FromName static FText FText::FromName( FName 	Val 	) FromString static FText FText::FromString( FString 	Val 	) Join static FText FText::Join( FText 	Delimiter, TArray<FFormatArgumentValue> 	Args 	) FromStringTable static FText FText::FromStringTable(

const 	FName 	InTableId, 	FString 	InKey, 	EStringTableLoadingPolicy 	InLoadingPolicy	 = 	EStringTableLoadingPolicy :: FindOrLoad

) Join static FText FText::Join( FText 	Delimiter, TArray<FText> 	Args 	) AsDate static FText FText::AsDate( FDateTime 	DateTime, Unknown 	DateStyle	 = 	EDateTimeStyle :: Default 	) AsDateTime static FText FText::AsDateTime( FDateTime 	DateTime, Unknown 	DateStyle	 = 	EDateTimeStyle :: Default, Unknown 	TimeStyle	 = 	EDateTimeStyle :: Default 	) AsTime static FText FText::AsTime( FDateTime 	DateTime, Unknown 	TimeStyle	 = 	EDateTimeStyle :: Default 	) AsTimespan static FText FText::AsTimespan( FTimespan 	Timespan 	) Format static FText FText::Format( 	FText 	Format, const ?& 		Arg0 	) Format static FText FText::Format( 	FText 	Format, const ?& 		Arg0, const ?& 		Arg1 	) Format static FText FText::Format( 	FText 	Format, const ?& 		Arg0, const ?& 		Arg1, const ?& 		Arg2 	) Format static FText FText::Format( 	FText 	Format, const ?& 		Arg0, const ?& 		Arg1, const ?& 		Arg2, const ?& 		Arg3 	) Format static FText FText::Format( 	FText 	Format, const ?& 		Arg0, const ?& 		Arg1, const ?& 		Arg2, const ?& 		Arg3, const ?& 		Arg4 	) Format static FText FText::Format( FText 	Format, TMap<FString,FFormatArgumentValue> 	Arguments 	) Format static FText FText::Format( FText 	Format, TArray<FFormatArgumentValue> 	Arguments 	) GetFormatPatternParameters static void FText::GetFormatPatternParameters( FText 	Fmt, TArray<FString>&out 	ParameterNames 	)
