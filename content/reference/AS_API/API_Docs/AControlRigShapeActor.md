# AControlRigShapeActor

**Visibility:** public

## Inheritance

AActor → AControlRigShapeActor

## Description

An actor used to represent a rig control

## CONTROLRIG \| SHAPE

### GlobalTransform

```
FTransform GlobalTransform
```
### bEnabled

```
bool bEnabled
```

Whether this control is enabled

### bSelected

```
bool bSelected
```

Whether this control is selected

### bSelectable

```
bool bSelectable
```

Whether this control can be selected

### bHovered

```
bool bHovered
```

Whether this control is hovered

---

## STATICMESH

### StaticMeshComponent

```
UStaticMeshComponent StaticMeshComponent
```

this is visual representation of the transform

---

## CONTROLRIG \| SHAPE

### SetGlobalTransform

```
void SetGlobalTransform(FTransform InTransform)
```

this returns root component transform based on attach when there is no attach, it is based on 0

### GetGlobalTransform

```
FTransform GetGlobalTransform()const
```

---

## FUNCTIONS

### IsSelectedInEditor

```
bool IsSelectedInEditor()const
```

Get whether the control is selected/unselected

### OnEnabledChanged

```
void OnEnabledChanged(bool bIsEnabled)
```

Event called when the enabled state of this control has changed

### IsHovered

```
bool IsHovered()const
```

Get whether the control is hovered

### IsEnabled

```
bool IsEnabled()const
```

Get whether the control is enabled/disabled

### OnHoveredChanged

```
void OnHoveredChanged(bool bIsSelected)
```

Event called when the hovered state of this control has changed

### OnSelectionChanged

```
void OnSelectionChanged(bool bIsSelected)
```

Event called when the selection state of this control has changed

### OnTransformChanged

```
void OnTransformChanged(FTransform NewTransform)
```

Event called when the transform of this control has changed

### SetEnabled

```
void SetEnabled(bool bInEnabled)
```

Set the control to be enabled/disabled

### OnManipulatingChanged

```
void OnManipulatingChanged(bool bIsManipulating)
```

Event called when the manipulating state of this control has changed

### SetHovered

```
void SetHovered(bool bInHovered)
```

Set the control to be hovered

### SetSelectable

```
void SetSelectable(bool bInSelectable)
```

Set the control to be selected/unselected

### SetSelected

```
void SetSelected(bool bInSelected)
```

Set the control to be selected/unselected

### GetbEnabled

```
bool GetbEnabled()const
```

SetbEnabled

### void SetbEnabled

```
void SetbEnabled(bool Value)
```

GetbSelected

### bool GetbSelected

```
bool GetbSelected()const SetbSelected
```

void SetbSelected(

### bool 	Value

```
bool 	Value 	)
```

GetbSelectable

### bool GetbSelectable

```
bool GetbSelectable()const SetbSelectable
```

void SetbSelectable(

### bool 	Value

```
bool 	Value 	)
```

GetbHovered

### bool GetbHovered

```
bool GetbHovered()const SetbHovered
```

void SetbHovered(

### Value

```
bool Value
```

)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static AControlRigShapeActor AControlRigShapeActor::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass AControlRigShapeActor::StaticClass

```
static UClass AControlRigShapeActor::StaticClass()
```
