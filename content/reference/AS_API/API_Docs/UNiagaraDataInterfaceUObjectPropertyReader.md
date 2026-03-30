# UNiagaraDataInterfaceUObjectPropertyReader

**Visibility:** public

## Inheritance

UNiagaraDataInterface → UNiagaraDataInterfaceUObjectPropertyReader

## Description

Data interface to read properties from UObjects.  Rather than having BP tick functions that push data into Niagara this data interface will instead pull them.

## UOBJECTPROPERTYREADER

### PropertyRemap

```
TArray<FNiagaraUObjectPropertyReaderRemap> PropertyRemap
```
### SourceActorComponentClass

```
UClass SourceActorComponentClass
```

When an actor is bound as the object we will also search for a component of this type to bind properties to.  For example, setting this to a UPointLightComponent when binding properties we will first look at the actor then look for a component of UPointLightComponent and look at properties on that also.  If no class is specified here we look at the RootComponent instead.

### UObjectParameterBinding

```
FNiagaraUserParameterBinding UObjectParameterBinding
```

User parameter Object binding to read properties from.

---

## NIAGARA

### SetUObjectReaderPropertyRemap

```
static void UNiagaraDataInterfaceUObjectPropertyReader::SetUObjectReaderPropertyRemap(
```

UNiagaraComponent 	NiagaraComponent,

FName 	UserParameterName,

### FName 	GraphName,

```
FName 	RemapName
```

)

### Remaps a property reader, where the

```
Remaps a property reader, where the
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UNiagaraDataInterfaceUObjectPropertyReader::StaticClass()
```
