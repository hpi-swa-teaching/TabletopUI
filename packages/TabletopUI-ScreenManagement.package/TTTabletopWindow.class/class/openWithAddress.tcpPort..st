toolbuilder
openWithAddress: anAddress tcpPort: tcpPort

	| inst ref sessionmanager |
	ref := TTReferenceManager new.
	inst := self new.
	inst networkManager: (TTClientNetworkManager newWithAddress: anAddress tcpPort: tcpPort udpPort: tcpPort).
	inst referenceManager: ref.
	inst networkManager referenceManager: (ref).
	inst networkManager referenceManager addEntry: inst forId: 'window'.
	
	sessionmanager:= TTClientSessionManager new.
	sessionmanager window: inst.
	sessionmanager networkManager: inst networkManager.
	inst networkManager referenceManager addEntry: sessionmanager forId: 'sessionmanager'.

	inst networkManager start.
	^ ToolBuilder open: (inst openPlayerCountScreen; yourself)