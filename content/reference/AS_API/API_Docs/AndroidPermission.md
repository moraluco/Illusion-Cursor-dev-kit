# AndroidPermission

## Inheritance

AndroidPermission → ANDROIDPERMISSION → CheckPermission

## Description

static bool AndroidPermission::CheckPermission( FString 	permission 	)

check if the permission is already granted

AcquirePermissions static UAndroidPermissionCallbackProxy AndroidPermission::AcquirePermissions(

## Members

### permissions

```
TArray<FString> permissions
```

)

try to acquire permissions and return a singleton callback proxy object containing OnPermissionsGranted delegate
