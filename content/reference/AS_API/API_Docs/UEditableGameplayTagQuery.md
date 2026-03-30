# UEditableGameplayTagQuery

**Visibility:** public

## Inheritance

UObject → UEditableGameplayTagQuery

## Description

This is an editor-only representation of a query, designed to be editable with a typical property window.  To edit a query in the editor, an FGameplayTagQuery is converted to a set of UObjects and edited,  When finished, the query struct is rewritten and these UObjects are discarded.  This query representation is not intended for runtime use.

## QUERY

### RootExpression

```
UEditableGameplayTagQueryExpression RootExpression
```

The base expression of this query.

### UserDescription

```
FString UserDescription
```

User-supplied description, shown in property details. Auto-generated description is shown if not supplied.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UEditableGameplayTagQuery::StaticClass()
```
