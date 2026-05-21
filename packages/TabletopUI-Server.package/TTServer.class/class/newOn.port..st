as yet unclassified
newOn: address port: port

	| inst echo |
	inst := self new.
	inst networkmanager: (TTServerNetworkManager newWithAddress: address tcpPort: port udpPort: port).
	inst referencemanager: TTReferenceManager new.
	inst networkmanager referenceManager: (inst referencemanager).
	
	echo := ChatEcho new.
	inst referencemanager addEntry: echo forId: 'chat'.
	echo networkmanager: (inst networkmanager).
	
	inst networkmanager start.
	
	^ inst