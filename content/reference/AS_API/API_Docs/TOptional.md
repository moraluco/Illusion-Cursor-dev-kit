# TOptional

## Inheritance

TOptional → VARIABLES → Value

## Description

const T& Value

## FUNCTIONS

### opEquals

```
bool opEquals(TOptional<T> Other)const
```

IsSet

### bool IsSet

```
bool IsSet()const
```

Returns if the optional has a valid value. This must be true in order for Get() or GetValue() to be called.

### Set

```
void Set(const T&in Value)const
```

GetValue

### const T& GetValue

```
const T& GetValue()const
```

Gets a const reference to the optional's set value. IsSet() must return true for this function to be called.

### GetValue

```
T& GetValue()
```

Gets a non-const reference to the optional's set value. IsSet() must return true for this function to be called.

### Get

```
const T& Get(const T& DefaultValue)const
```

If set returns the optional's set value, otherwise returns DefaultValue

### Reset

```
void Reset()
```

Destruct the value inside the optional and unset it.

### opAssign

```
TOptional<T>& opAssign(TOptional<T> Other)
```
