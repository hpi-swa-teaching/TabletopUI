initialization
connectTo: anAddress tcpPort: tcpPort

	self
		tcpPort: tcpPort;
		setServerAddressFromString: anAddress;
		start;
		referenceManager: TTReferenceManager new.
	self referenceManager addEntry: self forId: 'nwm'
	"Low-priority change. In case of a merge conflict, resolve in favor of the other changes."