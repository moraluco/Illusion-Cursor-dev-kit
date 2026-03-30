# Media

## Inheritance

Media

## MEDIA \| CAPTURE

### EnumerateVideoCaptureDevices

```
static void Media::EnumerateVideoCaptureDevices(TArray<FMediaCaptureDevice>& OutDevices, int Filter = - 1)
```

Enumerate available audio capture devices.

To filter for a specific subset of devices, use the MakeBitmask node with EMediaVideoCaptureDeviceFilter as the Bitmask Enum.

**Parameters**

OutDevices
TArray<FMediaCaptureDevice>&

Will contain the available capture devices.

Filter
int

The types of capture devices to return (-1 = all).

EnumerateWebcamCaptureDevices
static void Media::EnumerateWebcamCaptureDevices(
TArray<FMediaCaptureDevice>& 	OutDevices,
int 	Filter	 = 	- 1
	)

Enumerate available audio capture devices.

To filter for a specific subset of devices, use the MakeBitmask node with EMediaWebcamCaptureDeviceFilter as the Bitmask Enum.

**Parameters**

OutDevices
TArray<FMediaCaptureDevice>&

Will contain the available capture devices.

Filter
int

The types of capture devices to return (-1 = all).

EnumerateAudioCaptureDevices
static void Media::EnumerateAudioCaptureDevices(
TArray<FMediaCaptureDevice>& 	OutDevices,
int 	Filter	 = 	- 1
	)

Enumerate available audio capture devices.

To filter for a specific subset of devices, use the MakeBitmask node with EMediaAudioCaptureDeviceFilter as the Bitmask Enum.

**Parameters**

OutDevices
TArray<FMediaCaptureDevice>&

Will contain the available capture devices.

Filter
int

The types of capture devices to return (-1 = all).
