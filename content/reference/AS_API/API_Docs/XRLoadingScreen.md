# XRLoadingScreen

## Inheritance

XRLoadingScreen

## INPUT \| HEADMOUNTEDDISPLAY \| LOADINGSCREEN

### ClearLoadingScreenSplashes

```
static void XRLoadingScreen::ClearLoadingScreenSplashes()
```

HideLoadingScreen

### static void XRLoadingScreen::HideLoadingScreen

```
static void XRLoadingScreen::HideLoadingScreen()
```

Hide the splash screen and return to normal display.

### SetLoadingScreen

```
static void XRLoadingScreen::SetLoadingScreen(
```

UTexture 	Texture,

### FVector2D 	Scale	 = 	FVector2D

```
FVector2D Scale = FVector2D(1.000000, 1.000000), FVector Offset = FVector(),
```

bool 	bShowLoadingMovie	 = 	false,

### bool 	bShowOnSet	 = 	false

```
bool 	bShowOnSet	 = 	false
```

)

### ShowLoadingScreen

```
static void XRLoadingScreen::ShowLoadingScreen()
```

Show the loading screen and override the VR display

### AddLoadingScreenSplash

```
static void XRLoadingScreen::AddLoadingScreenSplash(
```

UTexture 	Texture,

### FVector 	Translation,

```
FVector Translation, FRotator Rotation, FVector2D Size = FVector2D(1.000000, 1.000000),
```

FRotator 	DeltaRotation	 = 	FRotator ( ),

bool 	bClearBeforeAdd	 = 	false

)

### Adds a splash element to the loading screen.

```
Adds a splash element to the loading screen.
```

**Parameters**

Texture
UTexture

(in) A texture asset to be used for the splash.

Translation
FVector

(in) Initial translation of the center of the splash.

Rotation
FRotator

(in) Initial rotation of the splash screen, with the origin at the center of the splash.

Size
FVector2D

(in) Size, of the quad with the splash screen.

DeltaRotation
FRotator

(in) Incremental rotation, that is added each 2nd frame to the quad transform. The quad is rotated around the center of the quad.

bClearBeforeAdd
bool

(in) If true, clears splashes before adding a new one.
