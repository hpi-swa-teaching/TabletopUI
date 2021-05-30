initialization
initialize

	super initialize.
	
	self
		extent: (self class defaultSize) @ (self class defaultSize);
		tiles: (Matrix 
					rows: ((self class defaultSize)/(TTTile defaultSize)) rounded 
					columns: ((self class defaultSize)/(TTTile defaultSize)) rounded);
		fillTiles