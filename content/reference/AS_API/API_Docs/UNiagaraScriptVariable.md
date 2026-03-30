# UNiagaraScriptVariable

**Visibility:** public

## Inheritance

UObject → UNiagaraScriptVariable

## Description

Used to store variable data and metadata per graph.

## Members

### VALUE

```
DEFAULT VALUE
```
### DefaultBinding

```
FNiagaraScriptVariableBinding DefaultBinding
```

The default binding. Only used if DefaultMode == ENiagaraDefaultMode::Binding.

### DefaultMode

```
ENiagaraDefaultMode DefaultMode
```

The default mode. Can be Value, Binding or Custom.

---

## HIDDEN

### DefaultValueVariant

```
FNiagaraVariant DefaultValueVariant
```

---

## VARIABLE

### Metadata

```
FNiagaraVariableMetaData Metadata
```

The metadata associated with this script variable.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraScriptVariable::StaticClass()
```
