instantiation
instantiateTokenWithId: id

	| object |
	object := TTToken newWithNetworkFacade: (TTTokenNetworkFacadeDecorator newWith: self).
	self networkManager referenceManager addEntry: object forId: id.
	^ object