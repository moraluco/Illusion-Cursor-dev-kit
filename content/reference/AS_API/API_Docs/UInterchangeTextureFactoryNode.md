# UInterchangeTextureFactoryNode

**Visibility:** public

## Inheritance

UInterchangeBaseNode → UInterchangeTextureFactoryNode → UInterchangeTexture2DArrayFactoryNode → UInterchangeTextureCubeFactoryNode → UInterchangeTextureLightProfileFactoryNode

## Description

INTERCHANGE | NODE | TEXTURE ObjectClass const UClass ObjectClass

Get the class this node want to create

INTERCHANGE | NODE | TEXTURE InitializeTextureNode void InitializeTextureNode( FString 	UniqueID, FString 	DisplayLabel, FString 	InAssetClass, FString 	InAssetName 	)

Initialize node data

Parameters DisplayLabel FString

The name of the node

InAssetClass FString

The class the texture factory will create for this node.

GetCustomAddressY bool GetCustomAddressY( uint8& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomAdjustBrightness bool GetCustomAdjustBrightness( float32& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomAdjustBrightnessCurve bool GetCustomAdjustBrightnessCurve( float32& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomAdjustHue bool GetCustomAdjustHue( float32& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomAdjustMaxAlpha bool GetCustomAdjustMaxAlpha( float32& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomAdjustMinAlpha bool GetCustomAdjustMinAlpha( float32& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomAdjustRGBCurve bool GetCustomAdjustRGBCurve( float32& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomAdjustSaturation bool GetCustomAdjustSaturation( float32& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomAdjustVibrance bool GetCustomAdjustVibrance( float32& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomAlphaCoverageThresholds bool GetCustomAlphaCoverageThresholds( FVector4& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustombChromaKeyTexture bool GetCustombChromaKeyTexture( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustombDitherMipMapAlpha bool GetCustombDitherMipMapAlpha( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustombDoScaleMipsForAlphaCoverage bool GetCustombDoScaleMipsForAlphaCoverage( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustombFlipGreenChannel bool GetCustombFlipGreenChannel( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustombPreserveBorder bool GetCustombPreserveBorder( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustombUseLegacyGamma bool GetCustombUseLegacyGamma( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomChromaKeyColor bool GetCustomChromaKeyColor( FColor& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomChromaKeyThreshold bool GetCustomChromaKeyThreshold( float32& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomCompositePower bool GetCustomCompositePower( float32& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomCompositeTextureMode bool GetCustomCompositeTextureMode( uint8& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomCompressionNoAlpha bool GetCustomCompressionNoAlpha( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomCompressionQuality bool GetCustomCompressionQuality( uint8& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomCompressionSettings bool GetCustomCompressionSettings( uint8& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomDeferCompression bool GetCustomDeferCompression( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomDownscale bool GetCustomDownscale( float32& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomDownscaleOptions bool GetCustomDownscaleOptions( uint8& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomFilter bool GetCustomFilter( uint8& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomLODBias bool GetCustomLODBias( int& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomLODGroup bool GetCustomLODGroup( uint8& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomLossyCompressionAmount bool GetCustomLossyCompressionAmount( uint8& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomMaxTextureSize bool GetCustomMaxTextureSize( int& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomMipGenSettings bool GetCustomMipGenSettings( uint8& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomMipLoadOptions bool GetCustomMipLoadOptions( uint8& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomPaddingColor bool GetCustomPaddingColor( FColor& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomPowerOfTwoMode bool GetCustomPowerOfTwoMode( uint8& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomSRGB bool GetCustomSRGB( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetCustomTranslatedTextureNodeUid bool GetCustomTranslatedTextureNodeUid( FString& 	AttributeValue 	) const

Get the translated texture node unique ID.

GetCustomVirtualTextureStreaming bool GetCustomVirtualTextureStreaming( bool& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

GetObjectClass UClass GetObjectClass() const

Get the class this node want to create

GetCustomAddressX bool GetCustomAddressX( uint8& 	AttributeValue 	) const

Return false if the Attribute was not set previously.

SetCustomAddressX bool SetCustomAddressX( uint8 	AttributeValue, bool 	bAddApplyDelegate	 = 	true 	) SetCustomAddressY bool SetCustomAddressY( uint8 	AttributeValue, bool 	bAddApplyDelegate	 = 	true 	) SetCustomAdjustBrightness bool SetCustomAdjustBrightness( const 	float32& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomAdjustBrightnessCurve bool SetCustomAdjustBrightnessCurve( const 	float32& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomAdjustHue bool SetCustomAdjustHue( const 	float32& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomAdjustMaxAlpha bool SetCustomAdjustMaxAlpha( const 	float32& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomAdjustMinAlpha bool SetCustomAdjustMinAlpha( const 	float32& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomAdjustRGBCurve bool SetCustomAdjustRGBCurve( const 	float32& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomAdjustSaturation bool SetCustomAdjustSaturation( const 	float32& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomAdjustVibrance bool SetCustomAdjustVibrance( const 	float32& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomAlphaCoverageThresholds bool SetCustomAlphaCoverageThresholds( FVector4 	AttributeValue, bool 	bAddApplyDelegate	 = 	true 	) SetCustombChromaKeyTexture bool SetCustombChromaKeyTexture( const 	bool& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustombDitherMipMapAlpha bool SetCustombDitherMipMapAlpha( const 	bool& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustombDoScaleMipsForAlphaCoverage bool SetCustombDoScaleMipsForAlphaCoverage( const 	bool& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustombFlipGreenChannel bool SetCustombFlipGreenChannel( const 	bool& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustombPreserveBorder bool SetCustombPreserveBorder( const 	bool& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustombUseLegacyGamma bool SetCustombUseLegacyGamma( const 	bool& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomChromaKeyColor bool SetCustomChromaKeyColor( FColor 	AttributeValue, bool 	bAddApplyDelegate	 = 	true 	) SetCustomChromaKeyThreshold bool SetCustomChromaKeyThreshold( const 	float32& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomCompositePower bool SetCustomCompositePower( const 	float32& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomCompositeTextureMode bool SetCustomCompositeTextureMode( const 	uint8& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomCompressionNoAlpha bool SetCustomCompressionNoAlpha( const 	bool& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomCompressionQuality bool SetCustomCompressionQuality( const 	uint8& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomCompressionSettings bool SetCustomCompressionSettings( const 	uint8& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomDeferCompression bool SetCustomDeferCompression( const 	bool& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomDownscale bool SetCustomDownscale( const 	float32& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomDownscaleOptions bool SetCustomDownscaleOptions( const 	uint8& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomFilter bool SetCustomFilter( const 	uint8& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomLODBias bool SetCustomLODBias( const 	int& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomLODGroup bool SetCustomLODGroup( const 	uint8& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomLossyCompressionAmount bool SetCustomLossyCompressionAmount( const 	uint8& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomMaxTextureSize bool SetCustomMaxTextureSize( const 	int& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomMipGenSettings bool SetCustomMipGenSettings( const 	uint8& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomMipLoadOptions bool SetCustomMipLoadOptions( const 	uint8& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomPaddingColor bool SetCustomPaddingColor( FColor 	AttributeValue, bool 	bAddApplyDelegate	 = 	true 	) SetCustomPowerOfTwoMode bool SetCustomPowerOfTwoMode( const 	uint8& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomSRGB bool SetCustomSRGB( const 	bool& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) SetCustomTranslatedTextureNodeUid bool SetCustomTranslatedTextureNodeUid( FString 	AttributeValue 	)

Set the translated texture node unique ID. This is the reference to the node that was create by the translator and this node is needed to get the texture payload.

SetCustomVirtualTextureStreaming bool SetCustomVirtualTextureStreaming( const 	bool& 	AttributeValue, 	bool 	bAddApplyDelegate	 = 	true 	) STATIC FUNCTIONS StaticClass static UClass UInterchangeTextureFactoryNode::StaticClass()
