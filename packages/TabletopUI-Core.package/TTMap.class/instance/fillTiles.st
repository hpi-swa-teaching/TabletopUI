initialization
fillTiles

	self tiles indicesDo: [:aRow :aColumn | 
		self createAndInsertTileAt: aColumn @ aRow]