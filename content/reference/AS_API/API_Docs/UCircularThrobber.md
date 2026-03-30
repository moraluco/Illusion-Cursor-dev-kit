# UCircularThrobber

**Visibility:** public

## Inheritance

UWidget → UCircularThrobber

## Description

A throbber widget that orients images in a spinning circle.

## Members

### Children

```
No Children
```
### Progress

```
Spinner Progress
```

---

## APPEARANCE

### bEnableRadius

```
bool bEnableRadius
```
### NumberOfPieces

```
int NumberOfPieces
```

How many pieces there are

### Period

```
float32 Period
```

The amount of time for a full circle (in seconds)

### Radius

```
float32 Radius
```

The radius of the circle. If the throbber is a child of Canvas Panel, the 'Size to Content' option must be enabled in order to set Radius.

### Image

```
FSlateBrush Image APPEARANCE SetPeriod void SetPeriod(float32 InPeriod)
```

Sets the amount of time for a full circle (in seconds).

### SetRadius

```
void SetRadius(float32 InRadius)
```

Sets the radius of the circle.

### SetNumberOfPieces

```
void SetNumberOfPieces(int InNumberOfPieces)
```

Sets how many pieces there are.

---

## FUNCTIONS

### GetPeriod

```
const float32& GetPeriod()const
```

GetRadius

### const float32& GetRadius

```
const float32& GetRadius()const GetNumberOfPieces
```

const int& GetNumberOfPieces() const

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCircularThrobber::StaticClass()
```
