# UFractureClusterCutterSettings

**Visibility:** public

## Inheritance

UFractureToolSettings → UFractureClusterCutterSettings → CLUSTERVORONOI → NumberClustersMax

## Description

int NumberClustersMax

Maximum number of clusters of Voronoi sites to create. The amount of clusters created will be chosen at random between Min and Max

SitesPerClusterMin int SitesPerClusterMin

Minimum number of Voronoi sites per cluster. The amount of sites in each cluster will be chosen at random between Min and Max

SitesPerClusterMax int SitesPerClusterMax

Maximum number of Voronoi sites per cluster. The amount of sites in each cluster will be chosen at random between Min and Max

ClusterRadiusFractionMin float32 ClusterRadiusFractionMin

Minimum cluster radius (as fraction of the overall Voronoi diagram size). Cluster Radius Offset will be added to this Each Voronoi site will be placed at least this far (plus the Cluster Radius Offset) from its cluster center

ClusterRadiusFractionMax float32 ClusterRadiusFractionMax

Maximum cluster radius (as fraction of the overall Voronoi diagram size). Cluster Radius Offset will be added to this Each Voronoi site will be placed at most this far (plus the Cluster Radius Offset) from its cluster center

ClusterRadiusOffset float32 ClusterRadiusOffset

Cluster radius offset (in cm). This offset will be added to the 'Min/Max Dist from Center' distance

NumberClustersMin int NumberClustersMin

Minimum number of clusters of Voronoi sites to create. The amount of clusters created will be chosen at random between Min and Max

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFractureClusterCutterSettings::StaticClass()
```
