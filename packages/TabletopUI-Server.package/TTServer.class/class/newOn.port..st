as yet unclassified
newOn: address port: port

	| inst echo window sessionmanager |
	inst := self new.
	inst networkManager: (TTServerNetworkManager newWithAddress: address tcpPort: port udpPort: port).
	inst referenceManager: TTReferenceManager new.
	inst networkManager referenceManager: (inst referenceManager).
	
	echo := TTChatEcho new.
	inst referenceManager addEntry: echo forId: 'chat'.
	echo networkManager: (inst networkManager).
	
	window:= TTTabletopWindow openEmptySessionAddress: address tcpPort: port.
	
	sessionmanager:= TTServerSessionManager new.
	sessionmanager window: window.
	window serverSessionManager: sessionmanager.
	sessionmanager networkManager: inst networkManager.
	inst referenceManager addEntry: sessionmanager forId: 'sessionmanager'.
	
	inst networkManager start.
	
	^ inst