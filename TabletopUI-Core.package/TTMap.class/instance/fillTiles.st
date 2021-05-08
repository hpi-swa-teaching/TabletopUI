initialization
fillTiles

	self tiles indicesDo: [:aNumberRow :aNumberColumn | 
		self createAndInsertTileAt: aNumberColumn @ aNumberRow]