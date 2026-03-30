# UEnvQueryTest_Dot

**Visibility:** public

## Inheritance

UEnvQueryTest → UEnvQueryTest_Dot → DOT → LineB

## Description

FEnvDirection LineB

defines direction of second line used by test

TestMode EEnvTestDot TestMode bAbsoluteValue bool bAbsoluteValue

If true, this test uses the absolute value of the dot product rather than the dot product itself.  Useful when you want to compare "how lateral" something is.  I.E. values closer to zero are further to the side, and values closer to 1 are more in front or behind (without distinguishing forward/backward).

LineA FEnvDirection LineA

defines direction of first line used by test

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEnvQueryTest_Dot::StaticClass()
```
