# UThrobber

**Visibility:** public

## Inheritance

UWidget → UThrobber

## Description

A Throbber widget that shows several zooming circles in a row.

## APPEARANCE

### bAnimateVertically

```
bool bAnimateVertically
```

Should the pieces animate vertically?

### bAnimateOpacity

```
bool bAnimateOpacity
```

Should the pieces animate their opacity?

### Image

```
FSlateBrush Image
```
### NumberOfPieces

```
int NumberOfPieces
```

How many pieces there are

### bAnimateHorizontally

```
bool bAnimateHorizontally
```

Should the pieces animate horizontally?

---

## APPEARANCE

### SetAnimateOpacity

```
void SetAnimateOpacity(bool bInAnimateOpacity)
```

Sets whether the pieces animate their opacity.

### SetAnimateVertically

```
void SetAnimateVertically(bool bInAnimateVertically)
```

Sets whether the pieces animate vertically.

### SetNumberOfPieces

```
void SetNumberOfPieces(int InNumberOfPieces)
```

Sets how many pieces there are

### SetAnimateHorizontally

```
void SetAnimateHorizontally(bool bInAnimateHorizontally)
```

Sets whether the pieces animate horizontally.

---

## FUNCTIONS

### GetNumberOfPieces

```
const int& GetNumberOfPieces()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UThrobber::StaticClass()
```
