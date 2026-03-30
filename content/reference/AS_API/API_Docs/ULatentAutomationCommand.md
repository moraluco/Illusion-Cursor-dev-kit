# ULatentAutomationCommand

**Visibility:** public

## Inheritance

UObject → ULatentAutomationCommand → SETTINGS

## Description

bAllowTimeout bool bAllowTimeout

## VARIABLES

### CurrentTest

```
FIntegrationTest& CurrentTest FUNCTIONS SetCurrentTest void SetCurrentTest(FIntegrationTest& T)
```

Use this for commands that are not added with AddLatentAutomationCommand.  This could be the case if a latent command is a child to another command.

### After

```
void After()
```

Before

### void Before

```
void Before()
```

Describe

### FString Describe

```
FString Describe()const Update
```

bool Update()

### GetCurrentTest

```
FIntegrationTest& GetCurrentTest()
```

Retrieves the current test. You can only call this after the command has been passed to T.AddLatentAutomationCommand() or after SetCurrentTest has been called.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass ULatentAutomationCommand::StaticClass()
```
