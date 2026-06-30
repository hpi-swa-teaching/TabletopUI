as yet unclassified
instantiateTokenWithId: id

	^ TTToken newWithNetworkFacade: (TTTokenNetworkFacadeDecorator newWith: self)