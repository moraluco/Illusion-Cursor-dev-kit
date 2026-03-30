# UBTComposite_Sequence

**Visibility:** public

## Inheritance

UBTCompositeNode → UBTComposite_Sequence

## Description

Sequence composite node.  Sequence Nodes execute their children from left to right, and will stop executing its children when one of their children fails.  If a child fails, then the Sequence fails. If all the Sequence's children succeed, then the Sequence succeeds.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UBTComposite_Sequence::StaticClass()
```
