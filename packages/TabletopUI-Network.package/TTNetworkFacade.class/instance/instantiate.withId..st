instantiation
instantiate: aNetworkObjectClass withId: id

	| object |
	object := aNetworkObjectClass newWithNetworkFacade: self.
	self networkManager referenceManager addEntry: object forId: id.
	^ object