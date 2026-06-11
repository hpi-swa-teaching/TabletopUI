initialization
connectTo: anAddress tcpPort: tcpPort
	self
		tcpPort: tcpPort;
		setServerAddressFromString: anAddress;
		start.
	self referenceManager addEntry: self forId: 'nwm'.
		
