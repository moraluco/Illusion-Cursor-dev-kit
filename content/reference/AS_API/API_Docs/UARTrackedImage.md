# UARTrackedImage

**Visibility:** public

## Inheritance

UARTrackedGeometry → UARTrackedImage → UARTrackedQRCode

## Description

AR AUGMENTEDREALITY|IMAGE DETECTION EstimateSize const FVector2D EstimateSize

Get the estimate size of the detected image, where X is the estimated width, and Y is the estimated height.

Note that ARCore can return a valid estimate size of the detected image when the tracking state of the UARTrackedImage is tracking. The size should reflect the actual size of the image target, which could be different than the input physical size of the candidate image.

ARKit will return the physical size of the ARCandidate image.

## VARIABLES

### DetectedImage

```
const UARCandidateImage DetectedImage
```

The candidate image that was detected in the scene

### AR AUGMENTEDREALITY|IMAGE DETECTION

```
AR AUGMENTEDREALITY|IMAGE DETECTION GetEstimateSize FVector2D GetEstimateSize()
```

Get the estimate size of the detected image, where X is the estimated width, and Y is the estimated height.

### Note that ARCore can return a valid estimate size of the detected image when the tracking state of the UARTrackedImage is tracking. The size should reflect the actual size of the image target, which could be different than the input physical size of the candidate image.

```
Note that ARCore can return a valid estimate size of the detected image when the tracking state of the UARTrackedImage is tracking. The size should reflect the actual size of the image target, which could be different than the input physical size of the candidate image.
```

ARKit will return the physical size of the ARCandidate image.

### GetDetectedImage

```
UARCandidateImage GetDetectedImage()const
```

### See: DetectedImage

```
See: DetectedImage
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UARTrackedImage::StaticClass()
```
