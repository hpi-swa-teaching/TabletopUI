actions
positionToCoordinatePos: aPosition

	| position |
	position := self map convertPixelPositionToTileCoordinates: aPosition.
	position := self map convertTileCoordinatesToPixelPosition: position.
	position := position + ((TTTile defaultSize @ TTTile defaultSize) /2).
	^position