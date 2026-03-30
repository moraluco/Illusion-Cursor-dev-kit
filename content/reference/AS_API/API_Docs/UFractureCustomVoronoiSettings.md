# UFractureCustomVoronoiSettings

**Visibility:** public

## Inheritance

UFractureToolSettings → UFractureCustomVoronoiSettings → LIVEVORONOISITES → GridY

## Description

int GridY

Number of sites to add to grid in Y

NormalOffset float32 NormalOffset

Offset point samples in the vertex normal directions

Variability float32 Variability

Amount to randomly displace each Voronoi site (in cm)

SitesToAdd int SitesToAdd

Number of Voronoi sites to add

GridX int GridX

Number of sites to add to grid in X

VoronoiPattern EVoronoiPattern VoronoiPattern

Method to generate next group of voronoi sites

GridZ int GridZ

Number of sites to add to grid in Z

SkipFraction float32 SkipFraction

Fraction of points to skip

SkipMode EDownsamplingMode SkipMode

Strategy used for skipping points; only used if SkipFraction is greater than 0

bStartAtActor bool bStartAtActor

Whether to use the reference mesh actor's transform when placing the Voronoi sites, or center them at the current gizmo location instead

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFractureCustomVoronoiSettings::StaticClass()
```
