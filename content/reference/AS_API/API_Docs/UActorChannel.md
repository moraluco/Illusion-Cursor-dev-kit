# UActorChannel

**Visibility:** public

## Inheritance

UChannel → UActorChannel

## Description

A channel for exchanging actor and its subobject's properties and RPCs.

ActorChannel manages the creation and lifetime of a replicated actor. Actual replication of properties and RPCs actually happens in FObjectReplicator now (see DataReplication.h).

An ActorChannel bunch looks like this:

+----------------------+---------------------------------------------------------------------------+

SpawnInfo            | (Spawn Info) Initial bunch only                                           |  -Actor Class        |   -Created by ActorChannel                                                |  -Spawn Loc/Rot      |                                                                           | NetGUID assigns      |                                                                           |  -Actor NetGUID      |                                                                           |  -Component NetGUIDs |                                                                           |

+----------------------+---------------------------------------------------------------------------+

|                                                                           |

+----------------------+---------------------------------------------------------------------------+

NetGUID ObjRef       | (Content chunks) x number of replicating objects (Actor + any components) |                      |   -Each chunk created by its own FObjectReplicator instance.              |

+----------------------+---------------------------------------------------------------------------+

|                                                                           | Properties...        |                                                                           |                      |                                                                           | RPCs...              |                                                                           |                      |                                                                           |

+----------------------+---------------------------------------------------------------------------+

</End Tag>           |                                                                           |

+----------------------+---------------------------------------------------------------------------+

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UActorChannel::StaticClass()
```
