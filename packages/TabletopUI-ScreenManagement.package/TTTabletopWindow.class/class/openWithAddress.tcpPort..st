toolbuilder
openWithAddress: anAddress tcpPort: tcpPort

	| inst ref |
	ref := TTReferenceManager new.
	inst := self new.
	inst networkmanager: (TTClientNetworkManager newWithAddress: anAddress tcpPort: tcpPort udpPort: tcpPort).
	inst referenceManager: ref.
	inst networkmanager referenceManager: (ref).
	inst networkmanager start.
	^ ToolBuilder open: (inst openPlayerCountScreen; yourself)