# USinglePropertyView

**Visibility:** public

## Inheritance

UPropertyViewBase → USinglePropertyView

## Description

The single property view allows you to display the value of an object's property.

## VIEW

### PropertyName

```
FName PropertyName
```

The name of the property to display.

### NameOverride

```
FText NameOverride
```

Override for the property name that will be displayed instead of the property name.

---

## VIEW

### GetPropertyName

```
FName GetPropertyName()const
```

SetNameOverride

### void SetNameOverride

```
void SetNameOverride(FText NewPropertyName)
```

SetPropertyName

### void SetPropertyName

```
void SetPropertyName(FName NewPropertyName)
```

GetNameOverride

### FText GetNameOverride

```
FText GetNameOverride()const STATIC FUNCTIONS
```

StaticClass

### static UClass USinglePropertyView::StaticClass

```
static UClass USinglePropertyView::StaticClass()
```
