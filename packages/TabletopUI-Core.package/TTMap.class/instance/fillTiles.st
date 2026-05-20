initialization
fillTiles

	self tiles indicesDo: [:row :column | 
		self createAndInsertTileAt: column @ row].
	
	self addAllMorphs: self tiles asArray