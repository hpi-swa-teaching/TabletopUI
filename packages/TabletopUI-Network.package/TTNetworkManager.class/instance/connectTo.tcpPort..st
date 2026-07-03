initialization
connectTo: anAddress tcpPort: tcpPort

	self
		tcpPort: tcpPort;
		setServerAddressFromString: anAddress;
		start.
	(self referenceManager hasEntry: 'nwm') ifFalse: [self referenceManager addEntry: self forId: 'nwm'].
	(self referenceManager hasEntry: 'nwm') ifTrue: [(self referenceManager resolve: 'nwm') = self ifFalse: [self error: 'Id nwm was already in use for an incorrect object']]