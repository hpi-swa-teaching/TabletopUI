initialization
connectTo: anAddress tcpPort: tcpPort
||
	self
		tcpPort: tcpPort;
		setServerAddressFromString: anAddress;
		start;
		referenceManager: TTReferenceManager new.
	self referenceManager addEntry: self forId: 'nwm';
		referenceManager:  TTReferenceManager new.