initialization
initialize

	super initialize.
	
	self
		extent: (self class defaultSize) @ (self class defaultSize);
		tiles: (Matrix rows: (self class defaultSize)/(TTTile defaultSize) columns: (self class defaultSize)/(TTTile defaultSize));
		fillTiles;
		createPlayerTokenAtTileCoordinates: 1 @ 1;
		createPlayerTokenAtTileCoordinates: 2 @ 1;
		createPlayerTokenAtTileCoordinates: 3 @ 1