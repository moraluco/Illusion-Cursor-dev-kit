# UFractureAutoClusterSettings

**Visibility:** public

## Inheritance

UFractureToolSettings → UFractureAutoClusterSettings → AUTOCLUSTER

## Description

bEnforceConnectivity bool bEnforceConnectivity

If true, bones will only be added to the same cluster if they are physically connected (either directly, or via other bones in the same cluster)

SiteCount uint SiteCount

Use a Voronoi diagram with this many Voronoi sites as a guide for deciding cluster boundaries

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFractureAutoClusterSettings::StaticClass()
```
