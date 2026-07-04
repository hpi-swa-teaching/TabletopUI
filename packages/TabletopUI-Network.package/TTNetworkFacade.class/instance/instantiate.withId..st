instantiation
instantiate: aNetworkObjectClass withId: id

	| object |
	object := aNetworkObjectClass newWithNetworkFacade: self.
	self networkmanager referenceManager addEntry: object forId: id.
	^ object