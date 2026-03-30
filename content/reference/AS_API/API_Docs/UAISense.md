# UAISense

**Visibility:** public

## Inheritance

UObject → UAISense → UAISense_Blueprint → UAISense_Damage → UAISense_Hearing → UAISense_Prediction

## Description

and 3 other children AI PERCEPTION NotifyType EAISenseNotifyType NotifyType bWantsNewPawnNotification bool bWantsNewPawnNotification

whether this sense is interested in getting notified about new Pawns being spawned this can be used for example for automated sense sources registration

bAutoRegisterAllPawnsAsSources bool bAutoRegisterAllPawnsAsSources

If true all newly spawned pawns will get auto registered as source for this sense.

DefaultExpirationAge float32 DefaultExpirationAge

age past which stimulus of this sense are "forgotten". (DEPRECATED: This property will be removed in future versions. Use AISenseConfig::MaxAge instead.)

## FUNCTIONS

### SetbWantsNewPawnNotification

```
void SetbWantsNewPawnNotification(bool Value)
```

GetbAutoRegisterAllPawnsAsSources

### bool GetbAutoRegisterAllPawnsAsSources

```
bool GetbAutoRegisterAllPawnsAsSources()const SetbAutoRegisterAllPawnsAsSources
```

void SetbAutoRegisterAllPawnsAsSources(

### bool 	Value

```
bool 	Value 	)
```

GetbWantsNewPawnNotification

### bool GetbWantsNewPawnNotification

```
bool GetbWantsNewPawnNotification()const STATIC FUNCTIONS
```

StaticClass

### static UClass UAISense::StaticClass

```
static UClass UAISense::StaticClass()
```
