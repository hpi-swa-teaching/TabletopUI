as yet unclassified
test00PixelPositionToTileCoordinates

	| pixelPos tileSize |

	pixelPos := (0@0).
	tileSize := TTTile defaultSize.
	
	self assert: (map convertPixelPositionToTileCoordinates: pixelPos) equals: (1@1).
	pixelPos := (pixelPos + 1) * tileSize.
	self assert: (map convertPixelPositionToTileCoordinates: pixelPos) equals: (2@2).
	pixelPos := (pixelPos + (tileSize@(1//tileSize))).
	self assert: (map convertPixelPositionToTileCoordinates: pixelPos) equals: (3@2)