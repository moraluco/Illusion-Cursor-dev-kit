# FDateTime

## Inheritance

FDateTime → VARIABLES → Millisecond

## Description

const int Millisecond Day const int Day DayOfYear const int DayOfYear Hour const int Hour Hour12 const int Hour12 Date const FDateTime Date Minute const int Minute Month const int Month Second const int Second Year const int Year Ticks const int64 Ticks

## FUNCTIONS

### ToString

```
FString ToString(FString Format)const
```

GetDate

### FDateTime GetDate

```
FDateTime GetDate()const GetDate
```

void GetDate(

### int& 	OutYear,

```
int& 	OutYear, int& 	OutMonth, int& 	OutDay 	) const
```

GetDay

### int GetDay

```
int GetDay()const GetDayOfYear
```

int GetDayOfYear() const

### GetHour

```
int GetHour()const
```

GetHour12

### int GetHour12

```
int GetHour12()const GetMillisecond
```

int GetMillisecond() const

### GetMinute

```
int GetMinute()const
```

GetMonth

### int GetMonth

```
int GetMonth()const GetSecond
```

int GetSecond() const

### GetYear

```
int GetYear()const
```

IsAfternoon

### bool IsAfternoon

```
bool IsAfternoon()const IsMorning
```

bool IsMorning() const

### ToUnixTimestamp

```
int64 ToUnixTimestamp()const
```

ToHttpDate

### FString ToHttpDate

```
FString ToHttpDate()const ToIso8601
```

FString ToIso8601() const

### opEquals

```
bool opEquals(FDateTime Other)const
```

GetTicks

### int64 GetTicks

```
int64 GetTicks()const opCmp
```

int opCmp(

### FDateTime 	Other

```
FDateTime 	Other 	) const
```

opAssign

### FDateTime& opAssign

```
FDateTime& opAssign(FDateTime Other)
```

ToString

### FString ToString

```
FString ToString()const STATIC FUNCTIONS
```

Now

### static FDateTime FDateTime::Now

```
static FDateTime FDateTime::Now()
```

DaysInYear

### static int FDateTime::DaysInYear

```
static int FDateTime::DaysInYear(int Year)
```

IsLeapYear

### static bool FDateTime::IsLeapYear

```
static bool FDateTime::IsLeapYear(int Year)
```

FromUnixTimestamp

### static FDateTime FDateTime::FromUnixTimestamp

```
static FDateTime FDateTime::FromUnixTimestamp(int64 UnixTime)
```

MinValue

### static FDateTime FDateTime::MinValue

```
static FDateTime FDateTime::MinValue()
```

MaxValue

### static FDateTime FDateTime::MaxValue

```
static FDateTime FDateTime::MaxValue()
```

DaysInMonth

### static int FDateTime::DaysInMonth

```
static int FDateTime::DaysInMonth(int Year, int Month)
```

UtcNow

### static FDateTime FDateTime::UtcNow

```
static FDateTime FDateTime::UtcNow()
```

Today

### static FDateTime FDateTime::Today

```
static FDateTime FDateTime::Today()
```

Parse

### static bool FDateTime::Parse

```
static bool FDateTime::Parse(FString DateTimeString, FDateTime& OutDateTime)
```

ParseHttpDate

### static bool FDateTime::ParseHttpDate

```
static bool FDateTime::ParseHttpDate(FString HttpDate, FDateTime& OutDateTime)
```

ParseIso8601

### static bool FDateTime::ParseIso8601

```
static bool FDateTime::ParseIso8601(FString DateTimeString, FDateTime& OutDateTime)
```
