toolbuilder
setupNetworkOn: inst Address: anAddress tcpPort: tcpPort

	| ref |
	ref := TTReferenceManager new.
	inst networkmanager: (TTClientNetworkManager newWithAddress: anAddress tcpPort: tcpPort udpPort: tcpPort).
	inst referenceManager: ref.
	inst networkmanager referenceManager: (ref).
	inst networkmanager referenceManager addEntry: self forId: 'window'.