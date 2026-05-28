as yet unclassified
newOn: address port: port

	| inst echo window sessionmanager |
	inst := self new.
	inst networkmanager: (TTServerNetworkManager newWithAddress: address tcpPort: port udpPort: port).
	inst referencemanager: TTReferenceManager new.
	inst networkmanager referenceManager: (inst referencemanager).
	
	echo := TTChatEcho new.
	inst referencemanager addEntry: echo forId: 'chat'.
	echo networkmanager: (inst networkmanager).
	
	window:= TTTabletopWindow openEmptySessionAddress: address tcpPort: port.
	
	sessionmanager:= TTServerSessionManager new.
	sessionmanager window: window.
	window serverSessionManager: sessionmanager.
	sessionmanager networkmanager: inst networkmanager.
	inst referencemanager addEntry: sessionmanager forId: 'sessionmanager'.
	
	inst networkmanager start.
	
	^ inst