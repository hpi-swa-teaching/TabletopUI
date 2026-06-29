testing
test05ImageEncodeDecode

	| assetLoader image deserializedImage |
	assetLoader := GitAssetLoader for: 'TabletopUI'.
	image := assetLoader loadForm: 'tabletop-graphics/indoor.png'.
	
	deserializedImage := TTSerializer deSerializeImage: (TTSerializer serializeImage: image).
	
	self assert: (image extent = deserializedImage extent and: [image bits = deserializedImage bits])