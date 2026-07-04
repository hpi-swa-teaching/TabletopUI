instantiation
instantiateTokenWithId: id

	| object |
	object := TTToken newWithNetworkFacade: (TTTokenNetworkFacadeDecorator newWith: self).
	self networkmanager referenceManager addEntry: object forId: id.
	^ object