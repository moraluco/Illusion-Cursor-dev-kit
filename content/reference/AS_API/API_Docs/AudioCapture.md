# AudioCapture

## Inheritance

AudioCapture → AUDIO → Conv_AudioInputDeviceInfoToString

## Description

static FString AudioCapture::Conv_AudioInputDeviceInfoToString( FAudioInputDeviceInfo 	info 	)

Returns the device info in a human readable format

Parameters info FAudioInputDeviceInfo

The audio device data to print

Returns

The data in a string format

GetAvailableAudioInputDevices static void AudioCapture::GetAvailableAudioInputDevices(

FOnAudioInputDevicesObtained 	OnObtainDevicesEvent	 = 	FOnAudioInputDevicesObtained ( )

)

Gets information about all audio output devices available in the system

Parameters OnObtainDevicesEvent FOnAudioInputDevicesObtained

the event to fire when the audio endpoint devices have been retrieved

### AUDIO CAPTURE

```
AUDIO CAPTURE CreateAudioCapture static UAudioCapture AudioCapture::CreateAudioCapture()
```
