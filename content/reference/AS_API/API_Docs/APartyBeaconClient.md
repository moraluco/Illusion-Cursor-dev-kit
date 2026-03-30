# APartyBeaconClient

**Visibility:** public

## Inheritance

AOnlineBeaconClient → APartyBeaconClient

## Description

A beacon client used for making reservations with an existing game session

## FUNCTIONS

### ClientReservationResponse

```
void ClientReservationResponse(EPartyReservationResult ReservationResponse)
```

Response from the host session after making a reservation request

**Parameters**

ReservationResponse
EPartyReservationResult

response from server

ClientSendReservationFull
void ClientSendReservationFull()

Response from the host session that the reservation is full

ClientSendReservationUpdates
void ClientSendReservationUpdates(
int 	NumRemainingReservations
	)

Response from the host session that the reservation count has changed

**Parameters**

NumRemainingReservations
int

number of slots remaining until a full session

ServerCancelReservationRequest
void ServerCancelReservationRequest(
FUniqueNetIdRepl 	PartyLeader
	)

Tell the server to cancel a pending or existing reservation

**Parameters**

PartyLeader
FUniqueNetIdRepl

id of the party leader for the reservation to cancel

ClientCancelReservationResponse
void ClientCancelReservationResponse(
EPartyReservationResult 	ReservationResponse
	)

Response from the host session after making a cancellation request

**Parameters**

ReservationResponse
EPartyReservationResult

response from server

STATIC FUNCTIONS
Spawn
static APartyBeaconClient APartyBeaconClient::Spawn(
FVector 	Location	 = 	FVector :: ZeroVector,
FRotator 	Rotation	 = 	FRotator :: ZeroRotator,
FName 	Name	 = 	NAME_None,
ULevel 	Level	 = 	nullptr
	)
StaticClass
static UClass APartyBeaconClient::StaticClass()
