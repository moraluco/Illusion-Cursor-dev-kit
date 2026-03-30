# FPaintContext

## Inheritance

FPaintContext → VARIABLES → AllottedGeometry

## Description

const FGeometry AllottedGeometry

## FUNCTIONS

### DrawBox

```
void DrawBox(FVector2D Position, FVector2D Size, FName BrushName, FLinearColor TintColor = FLinearColor :: White)
```

GetAllottedGeometry

### const FGeometry& GetAllottedGeometry

```
const FGeometry& GetAllottedGeometry()const GetStyleColor
```

FLinearColor GetStyleColor(

### FName 	Color

```
FName 	Color 	) const
```

GetStyleBrush

### const FSlateBrush& GetStyleBrush

```
const FSlateBrush& GetStyleBrush(FName Brush)const
```

GetStyleFont

### FSlateFontInfo GetStyleFont

```
FSlateFontInfo GetStyleFont(int Size)const
```

DrawBox

### void DrawBox

```
void DrawBox(FVector2D Position, FVector2D Size, FLinearColor Color)
```

opAssign

### FPaintContext& opAssign

```
FPaintContext& opAssign(FPaintContext Other)
```

DrawBox

### void DrawBox

```
void DrawBox(FVector2D Position, FVector2D Size, FSlateBrush Brush, FLinearColor TintColor = FLinearColor :: White)
```

DrawBox

### void DrawBox

```
void DrawBox(FVector2D Position, FVector2D Size, USlateBrushAsset Brush, FLinearColor TintColor = FLinearColor :: White)
```

DrawLine

### void DrawLine

```
void DrawLine(FVector2D PositionA, FVector2D PositionB, FLinearColor Color, float32 Thickness = 1.f, bool bAntiAlias = true)
```

DrawLines

### void DrawLines

```
void DrawLines(TArray<FVector2D> Points, FLinearColor Color, float32 Thickness = 1.f, bool bAntiAlias = true)
```

DrawText

### void DrawText

```
void DrawText(FString Text, FVector2D Position, FLinearColor Color)
```

DrawText

### void DrawText

```
void DrawText(FSlateFontInfo Font, FString Text, FVector2D Position, FLinearColor Color)
```
