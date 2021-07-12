testing
test00PixelPositionToTileCoordinates

	| pixelPosition tileSize |

	pixelPosition := (0 @ 0).
	tileSize := TTTile defaultSize.
	self assert: (map convertPixelPositionToTileCoordinates: pixelPosition) equals: (1 @ 1).
	pixelPosition := (pixelPosition + 1) * tileSize.
	self assert: (map convertPixelPositionToTileCoordinates: pixelPosition) equals: (2 @ 2).
	pixelPosition := (pixelPosition + (tileSize @ (1//tileSize))).
	self assert: (map convertPixelPositionToTileCoordinates: pixelPosition) equals: (3 @ 2)