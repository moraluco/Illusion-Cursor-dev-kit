# UDetailsView

**Visibility:** public

## Inheritance

UPropertyViewBase → UDetailsView

## Description

The details view allows you to display the value of an object properties.

## VIEW

### ColumnWidth

```
float32 ColumnWidth
```

The default column width

### bAllowFavoriteSystem

```
bool bAllowFavoriteSystem
```

If false, the current properties editor will never display the favorite system

### bShowModifiedPropertiesOption

```
bool bShowModifiedPropertiesOption
```

True if you want to show the 'Show Only Modified Properties'. Only valid in conjunction with bAllowFiltering

### bShowKeyablePropertiesOption

```
bool bShowKeyablePropertiesOption
```

True if you want to show the 'Show Only Keyable Properties'. Only valid in conjunction with bAllowFiltering

### bShowAnimatedPropertiesOption

```
bool bShowAnimatedPropertiesOption
```

True if you want to show the 'Show Only Animated Properties'. Only valid in conjunction with bAllowFiltering

### bAllowFiltering

```
bool bAllowFiltering
```

True if we allow filtering through search and the filter dropdown menu.

### bShowScrollBar

```
bool bShowScrollBar
```

If false, the details panel's scrollbar will always be hidden. Useful when embedding details panels in widgets that either grow to accommodate them, or with scrollbars of their own.

### bForceHiddenPropertyVisibility

```
bool bForceHiddenPropertyVisibility
```

If true, all properties will be visible, not just those with CPF_Edit

### ViewIdentifier

```
FName ViewIdentifier
```

Identifier for this details view; NAME_None if this view is anonymous

### CategoriesToShow

```
TArray<FName> CategoriesToShow
```

Which categories to show in the details panel. If both this and the Properties To Show lists are empty, all properties will show.

### PropertiesToShow

```
TArray<FName> PropertiesToShow
```

Which properties to show in the details panel. If both this and the Categories To Show lists are empty, all properties will show.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UDetailsView::StaticClass()
```
