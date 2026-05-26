server session management
setupNetworkAddress: anAddress tcpPort: tcpPort

	| ref |
	ref := TTReferenceManager new.
	self networkmanager: (TTClientNetworkManager newWithAddress: anAddress tcpPort: tcpPort udpPort: tcpPort).
	self referenceManager: ref.
	self networkmanager referenceManager: (ref).
	self networkmanager referenceManager addEntry: self forId: 'window'.
	self networkmanager start.