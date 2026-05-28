toolbuilder
setupNetworkOn: inst Address: anAddress tcpPort: tcpPort

	| ref |
	ref := TTReferenceManager new.
	inst networkManager: (TTClientNetworkManager newWithAddress: anAddress tcpPort: tcpPort udpPort: tcpPort).
	inst referenceManager: ref.
	inst networkManager referenceManager: (ref).
	inst networkManager referenceManager addEntry: self forId: 'window'.