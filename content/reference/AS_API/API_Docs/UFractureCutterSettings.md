# UFractureCutterSettings

**Visibility:** public

## Inheritance

UFractureToolSettings → UFractureCutterSettings

## Description

Settings specifically related to the one-time destructive fracturing of a mesh

## COMMONFRACTURE

### ChanceToFracture

```
float32 ChanceToFracture
```

Chance to fracture each selected bone. If 0, no bones will fracture; if 1, all bones will fracture.

### bGroupFracture

```
bool bGroupFracture
```

Generate a fracture pattern across all selected meshes.

### bDrawSites

```
bool bDrawSites
```

Draw points marking the centers of pieces to be cut out by the fracture pattern.

### bDrawDiagram

```
bool bDrawDiagram
```

Draw the edges of the fracture pattern.

### Grout

```
float32 Grout
```

Amount of space to leave between cut pieces

### RandomSeed

```
int RandomSeed
```

Random number generator seed for repeatability. If the value is -1, a different random seed will be used every time, otherwise the specified seed will always be used

---

## NOISE

### Amplitude

```
float32 Amplitude
```

Size of the Perlin noise displacement (in cm). If 0, no noise will be applied

### Frequency

```
float32 Frequency
```

Period of the Perlin noise.  Smaller values will create a smoother noise pattern

### Persistence

```
float32 Persistence
```

Persistence of the layers of Perlin noise. At each layer (octave) after the first, the amplitude of the Perlin noise is scaled by this factor

### Lacunarity

```
float32 Lacunarity
```

Lacunarity of the layers of Perlin noise. At each layer (octave) after the first, the frequency of the Perlin noise is scaled by this factor

### OctaveNumber

```
int OctaveNumber
```

Number of fractal layers of Perlin noise to apply. Each layer is additive, with Amplitude and Frequency parameters scaled by Persistence and Lacunarity Smaller values (1 or 2) will create noise that looks like gentle rolling hills, while larger values (> 4) will tend to look more like craggy mountains

### PointSpacing

```
float32 PointSpacing
```

Distance (in cm) between vertices on cut surfaces where noise is added.  Larger spacing between vertices will create more efficient meshes with fewer triangles, but less resolution to see the shape of the added noise

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFractureCutterSettings::StaticClass()
```
