initialization
initializeTiles

	self tiles: (Matrix 
			rows: self defaultSize / TTTile defaultSize rounded 
			columns: self defaultSize / TTTile defaultSize rounded);
		fillTiles.
		
	^ self tiles