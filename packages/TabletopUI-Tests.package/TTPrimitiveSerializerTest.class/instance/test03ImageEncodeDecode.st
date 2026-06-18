as yet unclassified
test03ImageEncodeDecode

	| assetLoader image deserializedImage |
	assetLoader := GitAssetLoader for: 'TabletopUI'.
	image := assetLoader loadForm: 'tabletop-graphics/indoor.png'.
	
	deserializedImage := TTPrimitiveSerializer deSerializeImage: (TTPrimitiveSerializer serializeImage: image).
	
	self assert: (image extent = deserializedImage extent and: [image bits = deserializedImage bits])