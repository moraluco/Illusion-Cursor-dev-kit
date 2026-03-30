# UGameNetworkManagerSettings

**Visibility:** public

## Inheritance

UObject → UGameNetworkManagerSettings

## Description

Holds the settings for the AGameNetworkManager class.

## BANDWIDTH

### MaxDynamicBandwidth

```
int MaxDynamicBandwidth
```

Maximum bandwidth dynamically set per connection.

### TotalNetBandwidth

```
int TotalNetBandwidth
```

Total available bandwidth for listen server, split dynamically across net connections.

### MinDynamicBandwidth

```
int MinDynamicBandwidth
```

Minimum bandwidth dynamically set per connection.

---

## STANDBYCHEATS

### StandbyRxCheatTime

```
float32 StandbyRxCheatTime
```

The amount of time without packets before triggering the cheat code.

### BadPingThreshold

```
int BadPingThreshold
```

The point we determine the server is either delaying packets or has bad upstream.

### StandbyTxCheatTime

```
float32 StandbyTxCheatTime
```

The amount of time without packets before triggering the cheat code.

### PercentMissingForRxStandby

```
float32 PercentMissingForRxStandby
```

The percentage of clients missing RX data before triggering the standby code.

### PercentMissingForTxStandby

```
float32 PercentMissingForTxStandby
```

The percentage of clients missing TX data before triggering the standby code.

### PercentForBadPing

```
float32 PercentForBadPing
```

The percentage of clients with bad ping before triggering the standby code.

### JoinInProgressStandbyWaitTime

```
float32 JoinInProgressStandbyWaitTime
```

The amount of time to wait before checking a connection for standby issues.

---

## FUNCTIONS

### SetbIsStandbyCheckingEnabled

```
void SetbIsStandbyCheckingEnabled(bool Value)
```

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UGameNetworkManagerSettings::StaticClass()
```
