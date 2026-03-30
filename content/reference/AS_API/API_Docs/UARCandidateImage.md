# UARCandidateImage

**Visibility:** public

## Inheritance

UDataAsset → UARCandidateImage

## Description

An asset that points to an image to be detected in a scene and provides the size of the object in real life

AR AUGMENTEDREALITY|IMAGE DETECTION PhysicalHeight const float32 PhysicalHeight

## Members

### Height

```
See: Height
```

PhysicalWidth const float32 PhysicalWidth

### Width

```
See: Width
```
### IMAGE

```
AR CANDIDATE IMAGE
```
### FriendlyName

```
FString FriendlyName
```

The friendly name to report back when the image is detected in scenes

### Orientation

```
EARCandidateImageOrientation Orientation
```

The orientation to treat the candidate image as. Ignored in ARCore

### CandidateTexture

```
UTexture2D CandidateTexture
```

The image to detect in scenes

### Height

```
float32 Height
```

The physical height in centimeters of the object that this candidate image represents. Ignored in ARCore

### Width

```
float32 Width
```

The physical width in centimeters of the object that this candidate image represents

### AR AUGMENTEDREALITY|IMAGE DETECTION

```
AR AUGMENTEDREALITY|IMAGE DETECTION GetPhysicalWidth float32 GetPhysicalWidth()const
```

### See: Width

```
See: Width
```

GetFriendlyName

### const FString& GetFriendlyName

```
const FString& GetFriendlyName()const
```

### See: FriendlyName

```
See: FriendlyName
```

GetOrientation

### EARCandidateImageOrientation GetOrientation

```
EARCandidateImageOrientation GetOrientation()const
```

### See: Orientation

```
See: Orientation
```

GetPhysicalHeight

### float32 GetPhysicalHeight

```
float32 GetPhysicalHeight()const
```

### See: Height

```
See: Height
```

GetCandidateTexture

### UTexture2D GetCandidateTexture

```
UTexture2D GetCandidateTexture()const
```

### See: CandidateTexture

```
See: CandidateTexture
```

---

## FUNCTIONS

### SetFriendlyName

```
void SetFriendlyName(FString Value)
```

SetOrientation

### void SetOrientation

```
void SetOrientation(const EARCandidateImageOrientation& Value)
```

SetCandidateTexture

### void SetCandidateTexture

```
void SetCandidateTexture(UTexture2D Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UARCandidateImage::StaticClass()
```
