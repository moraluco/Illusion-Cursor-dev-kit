# UPropertyViewBase

**Visibility:** public

## Inheritance

UWidget → UPropertyViewBase → UDetailsView → USinglePropertyView

## Description

Base of property view allows you to display the value of an object properties.

## VIEW

### bAutoLoadAsset

```
bool bAutoLoadAsset
```

Load the object (if it's an asset) when the widget is created.

---

## VIEW \| EVENT

### OnPropertyChanged

```
FOnPropertyValueChanged OnPropertyChanged
```

Sets a delegate called when the property value changes

---

## VARIABLES

### Object

```
UObject Object
```

The object to view.

---

## VIEW

### SetObject

```
void SetObject(UObject NewObject)
```

GetObject

### UObject GetObject

```
UObject GetObject()const STATIC FUNCTIONS
```

StaticClass

### static UClass UPropertyViewBase::StaticClass

```
static UClass UPropertyViewBase::StaticClass()
```
