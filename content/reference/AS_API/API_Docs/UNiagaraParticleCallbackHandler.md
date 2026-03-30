# UNiagaraParticleCallbackHandler

**Visibility:** public

## Inheritance

UInterface → UNiagaraParticleCallbackHandler → NIAGARA → ParticleData

## Description

void ParticleData( TArray<FBasicParticleData> 	Data, UNiagaraSystem 	NiagaraSystem, FVector 	SimulationPositionOffset 	)

This function is called once per tick with the gathered particle data. It will not be called if there is no particle data to call it with.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraParticleCallbackHandler::StaticClass()
```
