instantiation
instantiateTileWithId: id

	| object |
	object:= TTTile newWithNetworkFacade: (TTTileNetworkFacadeDecorator newWith: self).
	self networkmanager referenceManager addEntry: object forId: id.
	^object.