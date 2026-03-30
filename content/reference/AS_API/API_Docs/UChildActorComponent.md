# UChildActorComponent

**Visibility:** public

## Inheritance

USceneComponent → UChildActorComponent

## Description

A component that spawns an Actor when registered, and destroys it when unregistered.

## CHILDACTORCOMPONENT

### ChildActorClass

```
TSubclassOf<AActor> ChildActorClass
```

The class of Actor to spawn

### ChildActor

```
AActor ChildActor
```

The actor that we spawned and own

---

## CHILDACTORCOMPONENT

### SetChildActorClass

```
void SetChildActorClass(TSubclassOf<AActor> InClass)
```

Sets the class to use for the child actor.  If called on a template component (owned by a CDO), the properties of any existing child actor template will be copied as best possible to the template.  If called on a component instance in a world (and the class is changing), the created ChildActor will use the class defaults as template.

**Parameters**

InClass
TSubclassOf<AActor>

The Actor subclass to spawn as a child actor

---

## FUNCTIONS

### GetChildActorClass

```
const TSubclassOf<AActor>& GetChildActorClass()const
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Get static UChildActorComponent UChildActorComponent::Get(AActor Actor, FName WithName = NAME_None)
```

GetOrCreate

### static UChildActorComponent UChildActorComponent::GetOrCreate

```
static UChildActorComponent UChildActorComponent::GetOrCreate(AActor Actor, FName WithName = NAME_None)
```

Create

### static UChildActorComponent UChildActorComponent::Create

```
static UChildActorComponent UChildActorComponent::Create(AActor Actor, FName WithName = NAME_None)
```

StaticClass

### static UClass UChildActorComponent::StaticClass

```
static UClass UChildActorComponent::StaticClass()
```
