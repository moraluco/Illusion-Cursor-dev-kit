# UARDependencyHandler

**Visibility:** public

## Inheritance

UObject → UARDependencyHandler

## Description

Helper class that allows the user to explicitly request AR service installation and permission granting.  Recommended flow for explicit management: 1. Call "GetARDependencyHandler" to get a handler, if valid: 2. Call "CheckARServiceAvailability" to check availability, if the device is supported: 3. Call "InstallARService" to install AR service dependency, if installed: 4. Call "RequestARSessionPermission" to request permission, if granted: 5. Call "UARBlueprintLibrary::StartARSession" to start the session.  Alternatively, you can also call "StartARSessionLatent" which handles dependency and permission internally.

### STATIC VARIABLES

```
STATIC VARIABLES ARDependencyHandler static const UARDependencyHandler UARDependencyHandler::ARDependencyHandler FUNCTIONS InstallARService void InstallARService(FLatentActionInfo LatentInfo, EARServiceInstallRequestResult& OutInstallResult)
```

Latent action to install AR service on the current platform.

### RequestARSessionPermission

```
void RequestARSessionPermission(UARSessionConfig SessionConfig, FLatentActionInfo LatentInfo, EARServicePermissionRequestResult& OutPermissionResult)
```

Latent action to request permission to run the supplied session configuration.

### StartARSessionLatent

```
void StartARSessionLatent(UARSessionConfig SessionConfig, FLatentActionInfo LatentInfo)
```

Latent action to start AR session.  Will make sure dependency and permission issues are resolved internally, only returns the AR session starts successfully.

### CheckARServiceAvailability

```
void CheckARServiceAvailability(FLatentActionInfo LatentInfo, EARServiceAvailability& OutAvailability)
```

Latent action to check AR availability on the current platform.

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UARDependencyHandler::StaticClass()
```

GetARDependencyHandler

### static UARDependencyHandler UARDependencyHandler::GetARDependencyHandler

```
static UARDependencyHandler UARDependencyHandler::GetARDependencyHandler()
```

**Returns**

the dependency handler for the current platform. Can return null if the current platform doesn't support AR, or the AR system doesn't require dependency handling.
