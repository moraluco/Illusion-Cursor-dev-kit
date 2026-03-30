# UTcpMessagingSettings

**Visibility:** public

## Inheritance

UObject → UTcpMessagingSettings → TRANSPORT → ListenEndpoint

## Description

FString ListenEndpoint

The IP endpoint to listen for incoming connections.

The format is IP_ADDRESS:PORT_NUMBER or blank to disable listening.

ConnectToEndpoints TArray<FString> ConnectToEndpoints

The IP endpoints to try to establish outgoing connection to.

Use this setting to connect to a remote peer.  The format is IP_ADDRESS:PORT_NUMBER.

ConnectionRetryDelay int ConnectionRetryDelay

Delay time between attempts to re-establish outgoing connections that become disconnected or fail to connect 0 disables reconnection

EnableTransport bool EnableTransport

Whether the TCP transport channel is enabled

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UTcpMessagingSettings::StaticClass()
```
