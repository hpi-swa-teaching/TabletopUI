initialization
initialize

	super initialize.
	self rulerTool: (TTRulerTool newWithMap: self).
	self
		extent: self defaultSize @ (self defaultSize);
		tiles: (Matrix 
			rows: self defaultSize / TTTile defaultSize rounded 
			columns: self defaultSize / TTTile defaultSize rounded);
		fillTiles