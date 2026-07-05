instantiation
instantiateTileWithId: id

	| object |
	object := TTTile newWithNetworkFacade: (TTTileNetworkFacadeDecorator newWith: self).
	self networkManager referenceManager addEntry: object forId: id.
	^ object