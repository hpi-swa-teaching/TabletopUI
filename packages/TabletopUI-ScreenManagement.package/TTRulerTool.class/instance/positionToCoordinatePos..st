actions
positionToCoordinatePos: aPosition

	| position |
	
	position := self map convertPixelPositionToMapCoordinates: aPosition.
	position := self map convertMapCoordinatesToPixelPosition: position.
	position := position + ((TTTile defaultSize @ TTTile defaultSize) / 2).
	^position