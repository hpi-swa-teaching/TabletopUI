instantiation
instantiate: aNetworkObjectClass
	
	
	| anObject |
	anObject:= aNetworkObjectClass newWithNWM: self.
	self networkmanager referenceManager addEntry: anObject forId: self idAssigner getNewId.
	^anObject.