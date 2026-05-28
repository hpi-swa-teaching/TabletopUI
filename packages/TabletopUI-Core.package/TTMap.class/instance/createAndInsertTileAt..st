initialization
createAndInsertTileAt: aPoint

	| pixelPosition newTile |
	
	pixelPosition := self convertTileCoordinatesToPixelPosition: aPoint.
	newTile := TTTile newWith: pixelPosition.
	newTile 
		mapCoordinates: aPoint;
		addDependent: self.
	self tiles at: aPoint y at: aPoint x put: newTile.
	self addMorph: newTile	