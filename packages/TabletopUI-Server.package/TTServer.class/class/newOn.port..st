initialization
newOn: address port: port

	| inst chat window sessionmanager mapSelector |
	inst := self new.
	inst networkmanager: (TTServerNetworkManager newWithAddress: address tcpPort: port).
	inst referencemanager: TTReferenceManager new.
	inst networkmanager referenceManager: inst referencemanager.
	
	chat := ChatEcho new.
	inst referencemanager addEntry: chat forId: 'chat'.
	chat networkmanager: inst networkmanager.
	
	mapSelector := TTMapEcho new.
	inst referencemanager addEntry: mapSelector forId: 'mapSelector'.
	mapSelector networkmanager: inst networkmanager.
	
	window := TTTabletopWindow openEmptySessionAddress: address tcpPort: port.
	
	sessionmanager := TTServerSessionManager new.
	sessionmanager window: window.
	window sessionManager: sessionmanager.
	sessionmanager networkmanager: inst networkmanager.
	inst referencemanager addEntry: sessionmanager forId: 'sessionmanager'.
	
	inst networkmanager start.
	
	^ inst