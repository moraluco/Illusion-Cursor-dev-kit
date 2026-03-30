# UCryptoKeysSettings

**Visibility:** public

## Inheritance

UObject → UCryptoKeysSettings

## Description

Implements the settings for imported Paper2D assets, such as sprite sheet textures.

## ENCRYPTION

### bEncryptPakIniFiles

```
bool bEncryptPakIniFiles
```

Encrypts all ini files in the pak. Gives security to the most common sources of mineable information, with minimal runtime IO cost

### bEncryptPakIndex

```
bool bEncryptPakIndex
```

Encrypt the pak index, making it impossible to use unrealpak to manipulate the pak file without the encryption key

### bEncryptUAssetFiles

```
bool bEncryptUAssetFiles
```

Encrypts the uasset file in cooked data. Less runtime IO cost, and protection to package header information, including most string data, but still leaves the bulk of the data unencrypted.

### bEncryptAllAssetFiles

```
bool bEncryptAllAssetFiles
```

Encrypt all files in the pak file. Secure, but will cause some slowdown to runtime IO performance, and high entropy to packaged data which will be bad for patching

### SecondaryEncryptionKeys

```
TArray<FCryptoEncryptionKey> SecondaryEncryptionKeys
```

Secondary encryption keys that can be selected for use on different assets. Games are required to make these keys available to the pak platform file at runtime in order to access the data they protect.

---

## SIGNING

### bEnablePakSigning

```
bool bEnablePakSigning
```

Enable signing of pak files, to prevent tampering of the data

### STATIC FUNCTIONS

```
STATIC FUNCTIONS StaticClass static UClass UCryptoKeysSettings::StaticClass()
```
