instantiation
instantiate: aNetworkObjectClass withId: id

	| object |
	object:= aNetworkObjectClass newWithNWM: self.
	self networkmanager referenceManager addEntry: object forId: id.
	^object.