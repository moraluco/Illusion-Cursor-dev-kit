# UUdpMessagingSettings

**Visibility:** public

## Inheritance

UObject → UUdpMessagingSettings → AVAILABILITY → EnabledByDefault

## Description

bool EnabledByDefault

Whether UDP messaging is enabled by default. If false -messaging will need to be added to the commandline when running non-editor builds.

(Note

in Shipping builds ALLOW_UDP_MESSAGING_SHIPPING=1 must also be defined in TargetRules for messaging to be available with or without this setting)

## TRANSPORT

### bAutoRepair

```
bool bAutoRepair
```

Whether the UDP transport channel should try to auto repair when in error.

### MaxSendRate

```
float32 MaxSendRate
```

Maximum sustained transmission rate in Gbit / s.

The default value is 1 Gbit/s.

This is to control transmission of larger packages over the network. Without a limit, it is possible for packet data loss to occur because more data may be sent then may be supported by your network card.

Adjust this value higher or lower depending on your network capacity.

### AutoRepairAttemptLimit

```
uint AutoRepairAttemptLimit
```

The number of consecutive attempt the auto repair routine will try to repair.

### UnicastEndpoint

```
FString UnicastEndpoint
```

The IP endpoint to listen to and send packets from.

The format is IP_ADDRESS:PORT_NUMBER.  0.0.0.0:0 will bind to the default network adapter on Windows, and all available network adapters on other operating systems.  Specifying an interface IP here, will use that interface for multicasting and static endpoint might also reach this client through <unicast ip:multicast port> Specifying both the IP and Port will allow usage of static endpoint to reach this client Can be specified on the command line with `-UDPMESSAGING_TRANSPORT_UNICAST=`

### MulticastEndpoint

```
FString MulticastEndpoint
```

The IP endpoint to send multicast packets to.

The format is IP_ADDRESS:PORT_NUMBER.  The multicast IP address must be in the range 224.0.0.0 to 239.255.255.255.  Can be specified on the command line with `-UDPMESSAGING_TRANSPORT_MULTICAST=`

### EnableTransport

```
bool EnableTransport
```

Whether the UDP transport channel is enabled.  Can be specified on the command line with `-UDPMESSAGING_TRANSPORT_ENABLE=`

### MessageFormat

```
EUdpMessageFormat MessageFormat
```

The format used to serialize the UDP message payload.

### MulticastTimeToLive

```
uint8 MulticastTimeToLive
```

The time-to-live (TTL) for sent multicast packets.

### StaticEndpoints

```
TArray<FString> StaticEndpoints
```

The IP endpoints of static devices.

Use this setting to reach devices on other subnets, such as mobile phones on a WiFi network.  The format is IP_ADDRESS:PORT_NUMBER.

---

## TUNNEL

### TunnelUnicastEndpoint

```
FString TunnelUnicastEndpoint
```

The local IP endpoint to listen to and send packets from.

The format is IP_ADDRESS:PORT_NUMBER.

### TunnelMulticastEndpoint

```
FString TunnelMulticastEndpoint
```

The IP endpoint to send multicast packets to.

The format is IP_ADDRESS:PORT_NUMBER.  The multicast IP address must be in the range 224.0.0.0 to 239.255.255.255.

### RemoteTunnelEndpoints

```
TArray<FString> RemoteTunnelEndpoints
```

The IP endpoints of remote tunnel nodes.

Use this setting to connect to remote tunnel services.  The format is IP_ADDRESS:PORT_NUMBER.

### EnableTunnel

```
bool EnableTunnel
```

Whether the UDP tunnel is enabled.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UUdpMessagingSettings::StaticClass()
```
