# UCanvasRenderTarget2D

**Visibility:** public

## Inheritance

UTextureRenderTarget2D → UCanvasRenderTarget2D

## Description

CanvasRenderTarget2D is 2D render target which exposes a Canvas interface to allow you to draw elements onto it directly.  Use CreateCanvasRenderTarget2D() to create a render target texture by unique name, then bind a function to the OnCanvasRenderTargetUpdate delegate which will be called when the render target is updated.  If you need to repaint your canvas every single frame, simply call UpdateResource() on it from a Tick function.  Also, remember to hold onto your new canvas render target with a reference so that it doesn't get garbage collected.

## Members

### 2D

```
CANVAS RENDER TARGET 2D
```
### OnCanvasRenderTargetUpdate

```
FOnCanvasRenderTargetUpdate OnCanvasRenderTargetUpdate
```

Called when this Canvas Render Target is asked to update its texture resource.

### CANVAS RENDER TARGET 2D

```
CANVAS RENDER TARGET 2D Update void Update(UCanvas Canvas, int Width, int Height)
```

Allows a Blueprint to implement how this Canvas Render Target 2D should be updated.

**Parameters**

Canvas
UCanvas

Canvas object that can be used to paint to the render target

Width
int

Width of the render target.

Height
int

Height of the render target.

UpdateResource
void UpdateResource()

Updates the the canvas render target texture's resource. This is where the render target will create or find a canvas object to use.  It also calls UpdateResourceImmediate() to clear the render target texture from the deferred rendering list, to stop the texture from being cleared the next frame. From there it will ask the rendering thread to set up the RHI viewport. The canvas is then set up for rendering and then the user's update delegate is called.  The canvas is then flushed and the RHI resolves the texture to make it available for rendering.

CreateCanvasRenderTarget2D
static UCanvasRenderTarget2D UCanvasRenderTarget2D::CreateCanvasRenderTarget2D(

TSubclassOf<UCanvasRenderTarget2D> 	CanvasRenderTarget2DClass,
int 	Width	 = 	1024,
int 	Height	 = 	1024

)

Creates a new canvas render target and initializes it to the specified dimensions

**Parameters**

WorldContextObject

The world where this render target will be rendered for

CanvasRenderTarget2DClass
TSubclassOf<UCanvasRenderTarget2D>

Class of the render target.  Unless you want to use a special sub-class, you can simply pass UCanvasRenderTarget2D::StaticClass() here.

Width
int

Width of the render target.

Height
int

Height of the render target.

**Returns**

Returns the instanced render target.

GetSize
void GetSize(
int& 	Width,
int& 	Height
	)

Gets a specific render target's size from the global map of canvas render targets.

**Parameters**

Width
int&

Output variable for the render target's width

Height
int&

Output variable for the render target's height

STATIC FUNCTIONS
StaticClass
static UClass UCanvasRenderTarget2D::StaticClass()
