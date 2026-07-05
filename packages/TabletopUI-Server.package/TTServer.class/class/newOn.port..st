initialization
newOn: address port: port

	| inst window referenceManager |
	inst := self new.
	inst networkManager: (TTServerNetworkManager newWithAddress: address tcpPort: port).
	referenceManager := TTReferenceManager new.
	inst networkManager referenceManager: referenceManager.
	
	window := TTTabletopWindow openEmptySessionWithNetworkManager: inst networkManager.
	window model networkFacade instantiate: TTChatEcho withId: 'chat'.
	window model networkFacade instantiate: TTMapEcho withId: 'mapEcho'.
	inst window: window.
	
	inst networkManager start.
	
	^ inst