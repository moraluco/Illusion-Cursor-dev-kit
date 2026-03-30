# UMovieSceneNiagaraSystemSpawnSection

**Visibility:** public

## Inheritance

UMovieSceneSection → UMovieSceneNiagaraSystemSpawnSection

## Description

LIFE CYCLE SectionEvaluateBehavior ENiagaraSystemSpawnSectionEvaluateBehavior SectionEvaluateBehavior

Specifies what should happen to the niagara system when section is evaluating from the 2nd frame until the last frame.

SectionEndBehavior ENiagaraSystemSpawnSectionEndBehavior SectionEndBehavior

Specifies what should happen to the niagara system when section evaluation finishes.

AgeUpdateMode ENiagaraAgeUpdateMode AgeUpdateMode

Specifies how sequencer should update the age of the controlled niagara system.

bAllowScalability bool bAllowScalability SectionStartBehavior ENiagaraSystemSpawnSectionStartBehavior SectionStartBehavior

Specifies what should happen to the niagara system from before the section evaluates up until the first frame of the section.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UMovieSceneNiagaraSystemSpawnSection::StaticClass()
```
