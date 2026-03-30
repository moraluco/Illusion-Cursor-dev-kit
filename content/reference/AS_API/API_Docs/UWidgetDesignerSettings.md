# UWidgetDesignerSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UWidgetDesignerSettings

## Description

Implements the settings for the Widget Blueprint Designer.

## DRAGGING

### bLockToPanelOnDragByDefault

```
bool bLockToPanelOnDragByDefault
```

---

## INTERACTION

### CreateOnCompile

```
EDisplayOnCompile CreateOnCompile
```

Setting to automatically create compile tab based on compile results

### bRespectLocks

```
bool bRespectLocks
```

Should the designer respect locked widgets?  If true, the designer by default will not allow you to select locked widgets in the designer view.

### DismissOnCompile

```
EDisplayOnCompile DismissOnCompile
```

Setting to automatically dismiss compile tab based on compile results

---

## VISUALS

### bExecutePreConstructEvent

```
bool bExecutePreConstructEvent
```

Should the designer run the design event?  Disable this if you're seeing crashes in the designer, you may have some unsafe code running in the designer.

### bShowOutlines

```
bool bShowOutlines
```

Should the designer show outlines by default?

---

## FUNCTIONS

### SetGridSnapEnabled

```
void SetGridSnapEnabled(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UWidgetDesignerSettings::StaticClass()
```
