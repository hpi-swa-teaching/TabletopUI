accessing
calculateDistance

	| convertedStartPosition convertedEndPosition |
	convertedStartPosition := (self map convertPixelPositionToTileCoordinates: self startPosition) truncated.
	convertedEndPosition := (self map convertPixelPositionToTileCoordinates: self endPosition) truncated. 
	^ ((convertedStartPosition x - convertedEndPosition x) abs max: (convertedStartPosition y - convertedEndPosition y) abs) * 5