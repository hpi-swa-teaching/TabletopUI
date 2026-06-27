instantiation
instantiate: aNetworkObjectClass
	
	
	| anObject |
	anObject:= aNetworkObjectClass newWithNetworkFacade: self.
	self networkmanager referenceManager addEntry: anObject forId: self idAssigner getNewId.
	^anObject.