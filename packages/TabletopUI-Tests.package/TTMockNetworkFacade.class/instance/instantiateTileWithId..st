as yet unclassified
instantiateTileWithId: id

	^ TTTile newWithNetworkFacade: (TTTileNetworkFacadeDecorator newWith: self)