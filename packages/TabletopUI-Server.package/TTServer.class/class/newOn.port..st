as yet unclassified
newOn: address port: port

	| inst window |
	inst := self new.
	inst networkmanager: (TTServerNetworkManager newWithAddress: address tcpPort: port udpPort: port).
	inst referencemanager: TTReferenceManager new.
	inst networkmanager referenceManager: (inst referencemanager).

	
	window:= TTTabletopWindow openEmptySessionWithNetworkManager: inst networkmanager.
	window model networkFacade instantiate: TTChatEcho withId: 'chat'.

	
	inst networkmanager start.
	
	^ inst