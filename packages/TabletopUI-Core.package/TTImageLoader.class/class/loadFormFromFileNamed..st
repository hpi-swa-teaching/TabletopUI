form loading
loadFormFromFileNamed: aString

	| assetLoader |
	
	assetLoader := GitAssetLoader for: self projectName basePath: self basePathName.
	^ assetLoader loadForm: aString