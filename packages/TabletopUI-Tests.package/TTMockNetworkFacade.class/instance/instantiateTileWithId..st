instantiation
instantiateTileWithId: id

	^ TTTile newWithNetworkFacade: (TTTileNetworkFacadeDecorator newWith: self)