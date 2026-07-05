initialization
newOn: address port: port

	| inst window |
	inst := self new.
	inst networkManager: (TTServerNetworkManager newWithAddress: address tcpPort: port).
	inst referencemanager: TTReferenceManager new.
	inst networkManager referenceManager: inst referencemanager.
	
	window := TTTabletopWindow openEmptySessionWithNetworkManager: inst networkManager.
	window model networkFacade instantiate: TTChatEcho withId: 'chat'.
	window model networkFacade instantiate: TTMapEcho withId: 'mapEcho'.
	inst window: window.
	
	inst networkManager start.

	^ inst