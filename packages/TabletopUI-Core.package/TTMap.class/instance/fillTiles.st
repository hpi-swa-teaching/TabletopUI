initialization
fillTiles

	self tiles indicesDo: [:row :column | 
		self createAndInsertTileAt: column @ row]