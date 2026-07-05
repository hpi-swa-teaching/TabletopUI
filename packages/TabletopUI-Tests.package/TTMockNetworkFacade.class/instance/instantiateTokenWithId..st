instantiation
instantiateTokenWithId: id

	^ TTToken newWithNetworkFacade: (TTTokenNetworkFacadeDecorator newWith: self)