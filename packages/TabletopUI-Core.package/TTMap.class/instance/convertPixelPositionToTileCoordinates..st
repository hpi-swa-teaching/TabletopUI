converting
convertPixelPositionToTileCoordinates: aPoint

	^ ((aPoint - self position) / TTTile defaultSize) floor + (1 @ 1)