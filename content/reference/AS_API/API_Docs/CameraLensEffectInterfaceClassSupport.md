# CameraLensEffectInterfaceClassSupport

## Inheritance

CameraLensEffectInterfaceClassSupport

## Description

LENS EFFECT IsInterfaceClassValid static void CameraLensEffectInterfaceClassSupport::IsInterfaceClassValid(

FCameraLensInterfaceClassSupport 	CameraLens, EInterfaceValidResult& 	Result

)

Check whether or not the interface class is valid

SetInterfaceClass static void CameraLensEffectInterfaceClassSupport::SetInterfaceClass(

TSubclassOf<AActor> 	Class, FCameraLensInterfaceClassSupport& 	Var, EInterfaceValidResult& 	Result

)

Set the represented class of the passed in variable. Note: Check the tooltips on the individual pins.  You cannot bypass the validation by connecting a wires to this node!!

Parameters Class TSubclassOf<AActor>

MUST implement CameraLensEffectInterface - when connecting variables to the input, take care that the input class does in fact implement the interface.

Var FCameraLensInterfaceClassSupport&

The wrapper (for validation purposes) of the lens effect class.

GetInterfaceClass static TSubclassOf<AActor> CameraLensEffectInterfaceClassSupport::GetInterfaceClass(

## Members

### CameraLens

```
FCameraLensInterfaceClassSupport CameraLens
```

)

Returns the class represented by this lens effect wrapper...
