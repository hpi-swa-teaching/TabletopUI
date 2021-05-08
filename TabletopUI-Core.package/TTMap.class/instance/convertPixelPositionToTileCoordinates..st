converting
convertPixelPositionToTileCoordinates: aPoint

	^ ((aPoint - self position) / TTTile defaultSize) rounded + (1 @ 1)