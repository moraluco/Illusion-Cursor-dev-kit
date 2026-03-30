# USlateSettings

**Visibility:** public

## Inheritance

UObject → USlateSettings

## Description

Settings that control Slate functionality

## CONSTRAINTCANVAS

### bExplicitCanvasChildZOrder

```
bool bExplicitCanvasChildZOrder
```

Allow children of SConstraintCanvas to share render layers. Children must set explicit ZOrder on their slots to control render order.  Recommendation: Enable for mobile platforms.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass USlateSettings::StaticClass()
```
