# GooglePAD

## Inheritance

GooglePAD → GOOGLEPAD → GetStorageMethod

## Description

static EGooglePADStorageMethod GooglePAD::GetStorageMethod( int 	Location 	)

Get storage method from location

GetAssetPackLocation static EGooglePADErrorCode GooglePAD::GetAssetPackLocation( FString 	Name, int& 	Location 	)

Get location handle of requested asset pack (release when done)

GetAssetsPath static FString GooglePAD::GetAssetsPath( int 	Location 	)

Get asset path from from location

GetBytesDownloaded static int GooglePAD::GetBytesDownloaded( int 	State 	)

Get the number of bytes downloaded from a download state

GetDownloadState static EGooglePADErrorCode GooglePAD::GetDownloadState( FString 	Name, int& 	State 	)

Get download state handle of an asset pack (release when done)

GetDownloadStatus static EGooglePADDownloadStatus GooglePAD::GetDownloadStatus( int 	State 	)

Get download status from a download state

GetShowCellularDataConfirmationStatus static EGooglePADErrorCode GooglePAD::GetShowCellularDataConfirmationStatus(

EGooglePADCellularDataConfirmStatus& 	Status

)

Get status of cellular confirmation dialog

CancelDownload static EGooglePADErrorCode GooglePAD::CancelDownload( const 	TArray<FString> 	AssetPacks 	)

Cancel download of a set of asset packs

GetTotalBytesToDownload static int GooglePAD::GetTotalBytesToDownload( int 	State 	)

Get the total number of bytes to download from a download state

ReleaseAssetPackLocation static void GooglePAD::ReleaseAssetPackLocation( int 	Location 	)

Release location resources

ReleaseDownloadState static void GooglePAD::ReleaseDownloadState( int 	State 	)

Release download state resources

RequestDownload static EGooglePADErrorCode GooglePAD::RequestDownload( const 	TArray<FString> 	AssetPacks 	)

Request download of a set of asset packs

RequestInfo static EGooglePADErrorCode GooglePAD::RequestInfo( const 	TArray<FString> 	AssetPacks 	)

Request information about a set of asset packs

RequestRemoval static EGooglePADErrorCode GooglePAD::RequestRemoval( FString 	Name 	)

Request removal of an asset pack

ShowCellularDataConfirmation static EGooglePADErrorCode GooglePAD::ShowCellularDataConfirmation()

Show confirmation dialog requesting data download over cellular network
