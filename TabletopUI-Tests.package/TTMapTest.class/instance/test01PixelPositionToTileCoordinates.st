testing
test01PixelPositionToTileCoordinates

	| pixelPosition tileSize |

	pixelPosition := (0 @ 0).
	tileSize := TTTile defaultSize.
	self assert: (self map convertPixelPositionToTileCoordinates: pixelPosition) equals: (1 @ 1).
	pixelPosition := (pixelPosition + 1) * tileSize.
	self assert: (self map convertPixelPositionToTileCoordinates: pixelPosition) equals: (2 @ 2)