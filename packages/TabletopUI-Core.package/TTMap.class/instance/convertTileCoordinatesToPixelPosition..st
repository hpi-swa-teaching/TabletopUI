converting
convertTileCoordinatesToPixelPosition: aPoint

	| xPixelPosition yPixelPosition |
	
	xPixelPosition := (aPoint x - 1) * TTTile defaultSize + self position x.
	yPixelPosition := (aPoint y - 1) * TTTile defaultSize + self position y.
	
	^ xPixelPosition @ yPixelPosition