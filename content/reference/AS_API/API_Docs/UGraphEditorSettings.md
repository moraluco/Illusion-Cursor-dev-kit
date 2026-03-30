# UGraphEditorSettings

**Visibility:** public

## Inheritance

UObject → UGraphEditorSettings

## Description

Implements settings for the graph editor.

## COMMENTNODES

### DefaultCommentNodeMoveMode

```
ECommentBoxMode DefaultCommentNodeMoveMode
```

Whether a comment node should move any fully enclosed nodes around when it is moved

### bShowCommentBubbleWhenZoomedOut

```
bool bShowCommentBubbleWhenZoomedOut
```

Whether to show a zoom-invariant comment bubble when zoomed out (making the comment node's text readable at any distance)

---

## CONTEXTMENU

### bOpenCreateMenuOnBlankGraphAreas

```
bool bOpenCreateMenuOnBlankGraphAreas
```

If a key press (default Tab) should open the create node context menu when the mouse is on top of blank areas of the graph (defaults to true)

### PaddingAutoCollateIncrement

```
float32 PaddingAutoCollateIncrement
```

The amount of padding to add in order to auto collate multiple created nodes when using tab context menu (defaults to 20)

---

## GENERALSTYLE

### PaddingLeftOfOutput

```
float32 PaddingLeftOfOutput
```

The amount of horizontal padding towards the center of a node on an output pin (defaults to 10)

### PaddingTowardsNodeEdge

```
float32 PaddingTowardsNodeEdge
```

The amount of padding towards the node edge (defaults to 10, can be negative to make pins overlap or stick out of a node

### PaddingAbovePin

```
float32 PaddingAbovePin
```

The amount of padding above a pin (defaults to 4)

### PanningMouseButton

```
EGraphPanningMouseButton PanningMouseButton
```

Switch between using the right and middle mouse button for panning (defaults to right)

### DataPinStyle

```
EBlueprintPinStyleType DataPinStyle
```

The visual styling to use for graph editor pins (in Blueprints, materials, etc...)

### PaddingBelowPin

```
float32 PaddingBelowPin
```

The amount of padding below a pin (defaults to 4)

### PaddingRightOfInput

```
float32 PaddingRightOfInput
```

The amount of horizontal padding towards the center of a node on an input pin (defaults to 10)

---

## NODETITLECOLORS

### PreviewNodeTitleColor

```
FLinearColor PreviewNodeTitleColor
```

Preview node title color

### DefaultCommentNodeTitleColor

```
FLinearColor DefaultCommentNodeTitleColor
```

Default Comment node title color

### ResultNodeTitleColor

```
FLinearColor ResultNodeTitleColor
```

Result node title color

### ExecSequenceNodeTitleColor

```
FLinearColor ExecSequenceNodeTitleColor
```

Exec Sequence node title color

### ExecBranchNodeTitleColor

```
FLinearColor ExecBranchNodeTitleColor
```

Exec Branch node title color

### FunctionTerminatorNodeTitleColor

```
FLinearColor FunctionTerminatorNodeTitleColor
```

Function Terminator node title color

### ParentFunctionCallNodeTitleColor

```
FLinearColor ParentFunctionCallNodeTitleColor
```

Parent class function call node title color

### FunctionCallNodeTitleColor

```
FLinearColor FunctionCallNodeTitleColor
```

CallFunction node title color

### EventNodeTitleColor

```
FLinearColor EventNodeTitleColor
```

Event node title color

### PureFunctionCallNodeTitleColor

```
FLinearColor PureFunctionCallNodeTitleColor
```

Pure function call node title color

---

## PINCOLORS

### BooleanPinTypeColor

```
FLinearColor BooleanPinTypeColor
```

Boolean pin type color

### SoftClassPinTypeColor

```
FLinearColor SoftClassPinTypeColor
```

Asset Class pin type color

### IntPinTypeColor

```
FLinearColor IntPinTypeColor
```

Integer pin type color

### Int64PinTypeColor

```
FLinearColor Int64PinTypeColor
```

Integer64 pin type color

### FloatPinTypeColor

```
FLinearColor FloatPinTypeColor
```

Floating-point pin type color

### DoublePinTypeColor

```
FLinearColor DoublePinTypeColor
```

Double pin type color

### RealPinTypeColor

```
FLinearColor RealPinTypeColor
```

Real pin type color

### NamePinTypeColor

```
FLinearColor NamePinTypeColor
```

Name pin type color

### SoftObjectPinTypeColor

```
FLinearColor SoftObjectPinTypeColor
```

Asset pin type color

### ExecutionPinTypeColor

```
FLinearColor ExecutionPinTypeColor
```

Execution pin type color

### DelegatePinTypeColor

```
FLinearColor DelegatePinTypeColor
```

Delegate pin type color

### DefaultPinTypeColor

```
FLinearColor DefaultPinTypeColor
```

The default color is used only for types not specifically defined below.  Generally if it's seen, it means another type needs to be defined so that the wire in question can have an appropriate color.

### InterfacePinTypeColor

```
FLinearColor InterfacePinTypeColor
```

Interface pin type color

### StringPinTypeColor

```
FLinearColor StringPinTypeColor
```

String pin type color

### TextPinTypeColor

```
FLinearColor TextPinTypeColor
```

Text pin type color

### StructPinTypeColor

```
FLinearColor StructPinTypeColor
```

Struct pin type color

### WildcardPinTypeColor

```
FLinearColor WildcardPinTypeColor
```

Wildcard pin type color

### VectorPinTypeColor

```
FLinearColor VectorPinTypeColor
```

Vector pin type color

### RotatorPinTypeColor

```
FLinearColor RotatorPinTypeColor
```

Rotator pin type color

### TransformPinTypeColor

```
FLinearColor TransformPinTypeColor
```

Transform pin type color

### IndexPinTypeColor

```
FLinearColor IndexPinTypeColor
```

Index pin type color

### BytePinTypeColor

```
FLinearColor BytePinTypeColor
```

Byte pin type color

### ClassPinTypeColor

```
FLinearColor ClassPinTypeColor
```

Class pin type color

### ObjectPinTypeColor

```
FLinearColor ObjectPinTypeColor
```

Object pin type color

---

## SPLINES

### BackwardSplineTangentFromVerticalDelta

```
FVector2D BackwardSplineTangentFromVerticalDelta
```

The amount that the vertical delta affects the generated tangent handle of splines (when the wire is moving backwards)

### BackwardSplineTangentFromHorizontalDelta

```
FVector2D BackwardSplineTangentFromHorizontalDelta
```

The amount that the horizontal delta affects the generated tangent handle of splines (when the wire is moving backwards)

### BackwardSplineVerticalDeltaRange

```
float32 BackwardSplineVerticalDeltaRange
```

The maximum value to clamp the absolute value of the vertical distance between endpoints when calculating tangents (when the wire is moving backwards)

### BackwardSplineHorizontalDeltaRange

```
float32 BackwardSplineHorizontalDeltaRange
```

The maximum value to clamp the absolute value of the horizontal distance between endpoints when calculating tangents (when the wire is moving backwards)

### ForwardSplineTangentFromVerticalDelta

```
FVector2D ForwardSplineTangentFromVerticalDelta
```

The amount that the vertical delta affects the generated tangent handle of splines (when the wire is moving forward)

### ForwardSplineTangentFromHorizontalDelta

```
FVector2D ForwardSplineTangentFromHorizontalDelta
```

The amount that the horizontal delta affects the generated tangent handle of splines (when the wire is moving forward)

### ForwardSplineVerticalDeltaRange

```
float32 ForwardSplineVerticalDeltaRange
```

The maximum value to clamp the absolute value of the vertical distance between endpoints when calculating tangents (when the wire is moving forward)

### SplineHoverTolerance

```
float32 SplineHoverTolerance
```

The distance threshold controlling how close the mouse has to be to the spline in order to trigger a hover response

### bTreatSplinesLikePins

```
bool bTreatSplinesLikePins
```

If enabled, allows splines to be Alt+Clicked to break them or Ctrl+Dragged to move them as if these actions were taking place on the associated pin.

### SplineCloseTolerance

```
float32 SplineCloseTolerance
```

The additional distance around the spline to count as close, preventing other actions if the user just misses the spline when clicking

### ForwardSplineHorizontalDeltaRange

```
float32 ForwardSplineHorizontalDeltaRange
```

The maximum value to clamp the absolute value of the horizontal distance between endpoints when calculating tangents (when the wire is moving forward)

---

## TRACING

### TraceAttackWireThickness

```
float32 TraceAttackWireThickness
```
### TraceReleaseColor

```
FLinearColor TraceReleaseColor
```

The color to fade to for execution wires on release

### TraceReleaseWireThickness

```
float32 TraceReleaseWireThickness
```

The thickness to drop down to during release / for unexecuted wires when debugging

### DefaultExecutionWireThickness

```
float32 DefaultExecutionWireThickness
```

The thickness of an execution wire when not debugging

### TraceSustainColor

```
FLinearColor TraceSustainColor
```
### DefaultDataWireThickness

```
float32 DefaultDataWireThickness
```

The thickness of a data wire

### TraceSustainWireThickness

```
float32 TraceSustainWireThickness
```
### TraceAttackColor

```
FLinearColor TraceAttackColor
```

The color to display execution wires that were just executed

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGraphEditorSettings::StaticClass()
```
