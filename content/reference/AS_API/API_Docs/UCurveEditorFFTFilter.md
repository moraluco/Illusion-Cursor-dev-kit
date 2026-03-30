# UCurveEditorFFTFilter

**Visibility:** public

## Inheritance

UCurveEditorFilterBase → UCurveEditorFFTFilter → SETTINGS → Type

## Description

ECurveEditorFFTFilterType Type

Which frequencies are allowed through. For example, low-pass will let low frequency through and remove high frequency noise.

Response ECurveEditorFFTFilterClass Response

Which FFT filter implementation to use.

Order int Order

The number of samples used to filter in the time domain. It maps how steep the roll off is for the filter.

CutoffFrequency float32 CutoffFrequency

Normalized between 0-1. In a low pass filter, the lower the value is the smoother the output. In a high pass filter the higher the value the smoother the output.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCurveEditorFFTFilter::StaticClass()
```
