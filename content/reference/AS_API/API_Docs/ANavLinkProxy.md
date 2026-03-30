# ANavLinkProxy

**Visibility:** public

## Inheritance

AActor → ANavLinkProxy → SIMPLELINK → PointLinks

## Description

TArray<FNavigationLink> PointLinks

Navigation links (point to point) added to navigation data

## SMARTLINK

### bSmartLinkIsRelevant

```
bool bSmartLinkIsRelevant
```

Smart link: toggle relevancy

### SmartLinkComp

```
UNavLinkCustomComponent SmartLinkComp
```

Smart link: can affect path following

---

## VARIABLES

### OnSmartLinkReached

```
FSmartLinkReachedSignature OnSmartLinkReached AI|NAVIGATION IsSmartLinkEnabled bool IsSmartLinkEnabled()const
```

check if smart link is enabled

### SetSmartLinkEnabled

```
void SetSmartLinkEnabled(bool bEnabled)
```

change state of smart link

### ResumePathFollowing

```
void ResumePathFollowing(AActor Agent)
```

resume normal path following

### HasMovingAgents

```
bool HasMovingAgents()const
```

check if any agent is moving through smart link right now

---

## FUNCTIONS

### SmartLinkReached

```
void SmartLinkReached(AActor Agent, FVector Destination)
```

called when agent reaches smart link during path following, use ResumePathFollowing() to give control back

### STATIC FUNCTIONS

```
STATIC FUNCTIONS Spawn static ANavLinkProxy ANavLinkProxy::Spawn(FVector Location = FVector :: ZeroVector, FRotator Rotation = FRotator :: ZeroRotator, FName Name = NAME_None, ULevel Level = nullptr)
```

StaticClass

### static UClass ANavLinkProxy::StaticClass

```
static UClass ANavLinkProxy::StaticClass()
```
