initialize-release
createAndInsertTileAt: mapCoordinates

	| newTile |
	newTile := self networkFacade instantiateTileWithId: (self idForTileAt: mapCoordinates).
	newTile
		position: (self convertMapCoordinatesToPixelPosition: mapCoordinates);
		mapCoordinates: mapCoordinates;
		addDependent: self.
	self tiles at: mapCoordinates y at: mapCoordinates x put: newTile.
	self addMorph: newTile