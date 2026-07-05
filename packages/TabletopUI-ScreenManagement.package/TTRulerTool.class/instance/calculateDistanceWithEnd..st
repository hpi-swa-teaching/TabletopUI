actions
calculateDistanceWithEnd: aPosition

	|convertedStartPosition convertedEndPosition|
	
	convertedStartPosition := (self map convertPixelPositionToMapCoordinates: self startPosition) truncated.
	convertedEndPosition := (self map convertPixelPositionToMapCoordinates: aPosition) truncated. 
	^ ((convertedStartPosition x - convertedEndPosition x) abs
		max: (convertedStartPosition y - convertedEndPosition y) abs) * self feetPerTile