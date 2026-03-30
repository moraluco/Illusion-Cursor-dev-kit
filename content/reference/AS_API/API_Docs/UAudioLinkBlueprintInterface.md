# UAudioLinkBlueprintInterface

**Visibility:** public

## Inheritance

UInterface → UAudioLinkBlueprintInterface → AUDIOLINK → PlayLink

## Description

void PlayLink( float32 	StartTime	 = 	0.000000 	) SetLinkSound void SetLinkSound( USoundBase 	NewSound 	) StopLink void StopLink()

Stop an audio component's sound, issue any delegates if needed

IsLinkPlaying bool IsLinkPlaying() const STATIC FUNCTIONS StaticClass static UClass UAudioLinkBlueprintInterface::StaticClass()
