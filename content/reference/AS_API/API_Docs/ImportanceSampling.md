# ImportanceSampling

## Inheritance

ImportanceSampling

## MATH \| RANDOM

### NextSobolCell3D

```
static FVector ImportanceSampling::NextSobolCell3D(
```

int 	Index,

### int 	NumCells	 = 	1,

```
int NumCells = 1, FVector PreviousValue = FVector(0.000000, 0.000000, 0.000000)
```

)

**Parameters**

Index
int

Which sequential point

NumCells
int

Size of cell grid, 1 to 1024. Rounded up to the next power of two

PreviousValue
FVector

The Sobol value for Index-1

**Returns**

Sobol-distributed random 3D position in the same grid cell

ImportanceSample
static void ImportanceSampling::ImportanceSample(
FImportanceTexture 	Texture,
FVector2D 	Rand,
int 	Samples,
float32 	Intensity,
FVector2D& 	SamplePosition,
FLinearColor& 	SampleColor,
float32& 	SampleIntensity,
float32& 	SampleSize
	)

Distribute sample points proportional to Texture2D luminance.

**Parameters**

Rand
FVector2D

Random 2D point with components evenly distributed between 0 and 1

Samples
int

Total number of samples that will be used

Intensity
float32

Total intensity for light

MakeImportanceTexture
static FImportanceTexture ImportanceSampling::MakeImportanceTexture(
UTexture2D 	Texture,
EImportanceWeight 	WeightingFunc
	)

Create an FImportanceTexture object for texture-driven importance sampling from a 2D RGBA8 texture

**Parameters**

Texture
UTexture2D

Texture object to use. Must be RGBA8 format.

WeightingFunc
EImportanceWeight

How to turn the texture data into probability weights

**Returns**

new ImportanceTexture object for use with ImportanceSample

NextSobolCell2D
static FVector2D ImportanceSampling::NextSobolCell2D(

int 	Index,
int 	NumCells	 = 	1,
FVector2D 	PreviousValue	 = 	FVector2D ( 0.000000 , 0.000000 )

)

**Parameters**

Index
int

Which sequential point

NumCells
int

Size of cell grid, 1 to 32768. Rounded up to the next power of two

PreviousValue
FVector2D

The Sobol value for Index-1

**Returns**

Sobol-distributed random 2D position in the same grid cell

BreakImportanceTexture
static void ImportanceSampling::BreakImportanceTexture(
FImportanceTexture 	ImportanceTexture,
UTexture2D& 	Texture,
EImportanceWeight& 	WeightingFunc
	)

Get texture used to create an ImportanceTexture object

**Parameters**

ImportanceTexture
FImportanceTexture

The source ImportanceTexture object

WeightingFunc
EImportanceWeight&

How to turn the texture data into probability weights

**Returns**

new ImportanceTexture object for use with ImportanceSample

NextSobolFloat
static float32 ImportanceSampling::NextSobolFloat(
int 	Index,
int 	Dimension,
float32 	PreviousValue
	)

**Parameters**

Index
int

Which sequential point

Dimension
int

Which Sobol dimension (0 to 15)

PreviousValue
float32

The Sobol value for Index-1

**Returns**

Sobol-distributed random number between 0 and 1

RandomSobolCell2D
static FVector2D ImportanceSampling::RandomSobolCell2D(

int 	Index,
int 	NumCells	 = 	1,
FVector2D 	Cell	 = 	FVector2D ( 0.000000 , 0.000000 ),
FVector2D 	Seed	 = 	FVector2D ( 0.000000 , 0.000000 )

)

**Parameters**

Index
int

Which sequential point in the cell (starting at 0)

NumCells
int

Size of cell grid, 1 to 32768. Rounded up to the next power of two

Cell
FVector2D

Give a point from this integer grid cell

Seed
FVector2D

Random 2D seed (components in the range 0-1) to randomize across multiple sequences

**Returns**

Sobol-distributed random 2D position in the given grid cell

RandomSobolCell3D
static FVector ImportanceSampling::RandomSobolCell3D(

int 	Index,
int 	NumCells	 = 	1,
FVector 	Cell	 = 	FVector ( 0.000000 , 0.000000 , 0.000000 ),
FVector 	Seed	 = 	FVector ( 0.000000 , 0.000000 , 0.000000 )

)

**Parameters**

Index
int

Which sequential point in the cell (starting at 0)

NumCells
int

Size of cell grid, 1 to 1024. Rounded up to the next power of two

Cell
FVector

Give a point from this integer grid cell

Seed
FVector

Random 3D seed (components in the range 0-1) to randomize across multiple sequences

**Returns**

Sobol-distributed random 3D vector in the given grid cell

RandomSobolFloat
static float32 ImportanceSampling::RandomSobolFloat(
int 	Index,
int 	Dimension,
float32 	Seed
	)

**Parameters**

Index
int

Which sequential point

Dimension
int

Which Sobol dimension (0 to 15)

Seed
float32

Random seed (in the range 0-1) to randomize across multiple sequences

**Returns**

Sobol-distributed random number between 0 and 1
