initialization
newOn: address port: port

	| inst window |
	inst := self new.
	inst networkmanager: (TTServerNetworkManager newWithAddress: address tcpPort: port).
	inst referencemanager: TTReferenceManager new.
	inst networkmanager referenceManager: inst referencemanager.
	
	window := TTTabletopWindow openEmptySessionWithNetworkManager: inst networkmanager.
	window model networkFacade instantiate: TTChatEcho withId: 'chat'.
	window model networkFacade instantiate: TTMapEcho withId: 'mapEcho'.
	inst window: window.
	
	inst networkmanager start.

	^ inst