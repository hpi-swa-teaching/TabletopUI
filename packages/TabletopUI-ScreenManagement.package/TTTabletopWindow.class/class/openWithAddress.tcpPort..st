toolbuilder
openWithAddress: anAddress tcpPort: tcpPort

	| inst ref sessionmanager |
	ref := TTReferenceManager new.
	inst := self new.
	inst networkmanager: (TTClientNetworkManager newWithAddress: anAddress tcpPort: tcpPort udpPort: tcpPort).
	inst referenceManager: ref.
	inst networkmanager referenceManager: (ref).
	inst networkmanager referenceManager addEntry: inst forId: 'window'.
	
	sessionmanager:= TTClientSessionManager new.
	sessionmanager window: inst.
	sessionmanager networkmanager: inst networkmanager.
	inst networkmanager referenceManager addEntry: sessionmanager forId: 'sessionmanager'.

	inst networkmanager start.
	^ ToolBuilder open: (inst openPlayerCountScreen; yourself)