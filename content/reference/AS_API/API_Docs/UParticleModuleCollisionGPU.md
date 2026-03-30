# UParticleModuleCollisionGPU

**Visibility:** public

## Inheritance

UParticleModuleCollisionBase → UParticleModuleCollisionGPU → COLLISION → RandomDistribution

## Description

float32 RandomDistribution

Controls bouncing particles distribution (1 = uniform distribution; 2 = squared distribution).

ResilienceScaleOverLife FRawDistributionFloat ResilienceScaleOverLife

Scales the bounciness of the particle over its life.

Friction float32 Friction

Friction applied to all particles during a collision or while moving along a surface.

RandomSpread float32 RandomSpread

Controls how wide the bouncing particles are distributed (0 = disabled).

Resilience FRawDistributionFloat Resilience

The bounciness of the particle.

RadiusScale float32 RadiusScale

Scale applied to the size of the particle to obtain the collision radius.

RadiusBias float32 RadiusBias

Bias applied to the collision radius.

Response EParticleCollisionResponse Response

How particles respond to a collision event.

CollisionMode EParticleCollisionMode CollisionMode STATIC FUNCTIONS StaticClass static UClass UParticleModuleCollisionGPU::StaticClass()
