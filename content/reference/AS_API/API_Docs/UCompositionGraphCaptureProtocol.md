# UCompositionGraphCaptureProtocol

**Visibility:** public

## Inheritance

UMovieSceneImageCaptureProtocolBase → UCompositionGraphCaptureProtocol

## Description

COMPOSITION GRAPH OPTIONS bCaptureFramesInHDR bool bCaptureFramesInHDR

Whether to capture the frames as HDR textures (*.exr format)

HDRCompressionQuality int HDRCompressionQuality

Compression Quality for HDR Frames (0 for no compression, 1 for default compression which can be slow)

CaptureGamut EHDRCaptureGamut CaptureGamut

The color gamut to use when storing HDR captured data. The gamut depends on whether the bCaptureFramesInHDR option is enabled.

PostProcessingMaterial FSoftObjectPath PostProcessingMaterial

Custom post processing material to use for rendering

bDisableScreenPercentage bool bDisableScreenPercentage

Whether to disable screen percentage

IncludeRenderPasses FCompositionGraphCapturePasses IncludeRenderPasses

A list of render passes to include in the capture. Leave empty to export all available passes.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCompositionGraphCaptureProtocol::StaticClass()
```
