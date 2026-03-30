# UFractureRadialSettings

**Visibility:** public

## Inheritance

UFractureToolSettings → UFractureRadialSettings → RADIALVORONOI → Normal

## Description

FVector Normal

Normal to plane in which sites are generated. Only used when "Use Gizmo" is disabled

Radius float32 Radius

Pattern radius (in cm)

AngularSteps int AngularSteps

Number of angular steps

RadialSteps int RadialSteps

Number of radial steps

AngleOffset float32 AngleOffset

Angle offset at each radial step (in degrees)

Variability float32 Variability

Amount to randomly displace each Voronoi site (in cm)

Center FVector Center

Center of generated pattern. Only used when "Use Gizmo" is disabled

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UFractureRadialSettings::StaticClass()
```
