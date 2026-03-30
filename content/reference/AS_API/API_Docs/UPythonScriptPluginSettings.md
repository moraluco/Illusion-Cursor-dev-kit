# UPythonScriptPluginSettings

**Visibility:** public

## Inheritance

UDeveloperSettings → UPythonScriptPluginSettings

## Description

Configure the Python plug-in.

## PYTHON

### bIsolateInterpreterEnvironment

```
bool bIsolateInterpreterEnvironment
```

Should the embedded interpreter be run in isolation mode. In isolation, the standard PYTHON* environment variables (PYTHONPATH, PYTHONHOME, etc), the script's directory and the user's site-packages directory are ignored by the interpreter. This prevents incompabible software to crash the engine. Consider turning this option off if you tightly control your Python environment and you are sure everything is compatible. Note that the UE_PYTHONPATH environment variable is added to 'sys.path' whether the interpreter runs in insolation mode or not.

### bDeveloperMode

```
bool bDeveloperMode
```

Should Developer Mode be enabled on the Python interpreter for all users of the project Note: Most of the time you want to enable bDeveloperMode in the Editor Preferences instead!

### 

```
(will also enable extra warnings(e.g., for deprecated code), and enable stub code generation for use with external IDEs).
```

StartupScripts

### TArray<FString> StartupScripts

```
TArray<FString> StartupScripts
```

Array of Python scripts to run at start-up (run before the first Tick after the Engine has initialized).

---

## PYTHONREMOTEEXECUTION

### bRemoteExecution

```
bool bRemoteExecution
```

Should remote Python execution be enabled?

### RemoteExecutionMulticastGroupEndpoint

```
FString RemoteExecutionMulticastGroupEndpoint
```

The multicast group endpoint (in the form of IP_ADDRESS:PORT_NUMBER) that the UDP multicast socket should join

### RemoteExecutionMulticastBindAddress

```
FString RemoteExecutionMulticastBindAddress
```

The adapter address that the UDP multicast socket should bind to, or 0.0.0.0 to bind to all adapters

### RemoteExecutionSendBufferSizeBytes

```
int RemoteExecutionSendBufferSizeBytes
```

Size of the send buffer for the remote endpoint connection

### RemoteExecutionReceiveBufferSizeBytes

```
int RemoteExecutionReceiveBufferSizeBytes
```

Size of the receive buffer for the remote endpoint connection

### RemoteExecutionMulticastTtl

```
uint8 RemoteExecutionMulticastTtl
```

The TTL that the UDP multicast socket should use (0 is limited to the local host, 1 is limited to the local subnet)

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UPythonScriptPluginSettings::StaticClass()
```
