as yet unclassified
test02serverMessageToClient

	| clientNWM1 clientNWM2 relay serverNWM ref1 ref2 params deadline |
	relay := TTRelayServer new.
	clientNWM1 := TTClientNetworkManager new.
	clientNWM2 := TTClientNetworkManager new.
	serverNWM := TTServerNetworkManager new.
	
	serverNWM connectTo: 'localhost' tcpPort: relay getServerPort.
	clientNWM1 connectTo: 'localhost' tcpPort: relay getClientPort.
	
	ref1 := TTReferenceManager new.
	
	clientNWM1 referenceManager: ref1.
	
	ref1 addEntry: TTMockNetworkObject new forId: 'MOCKNWO'.
	
	params := Dictionary new.
	params at: 'val' put: 'chess'.
	Processor yield.
	deadline := DateAndTime now + (Duration milliSeconds: 2000).
	[relay getConnectedClientCount = 1 or: [DateAndTime now > deadline]] whileFalse: [
		relay checkClientConnect.
		Processor yield].
	self assert: relay getConnectedClientCount = 1.
	clientNWM2 connectTo: 'localhost' tcpPort: relay getClientPort.
	ref2 := TTReferenceManager new.
	clientNWM2 referenceManager: ref2.
	ref2 addEntry: TTMockNetworkObject new forId: 'MOCKNWO'.
	
	deadline := DateAndTime now + (Duration milliSeconds: 2000).
	[relay getConnectedClientCount = 2 or: [DateAndTime now > deadline]] whileFalse: [
		relay checkClientConnect.
		Processor yield].
	self assert: relay getConnectedClientCount = 2.
	
	serverNWM send: #setFrom: to: 'MOCKNWO' with: params.
	deadline := DateAndTime now + (Duration milliSeconds: 2000).
	[((ref1 resolve: 'MOCKNWO') val = 'chess' and: [(ref2 resolve: 'MOCKNWO') val = 'chess']) or: [DateAndTime now > deadline]] whileFalse: [
		(Delay forMilliseconds: 10) wait.
		Processor yield].
	self assert: (ref1 resolve: 'MOCKNWO') val = 'chess'.
	self assert: (ref2 resolve: 'MOCKNWO') val = 'chess'.
	relay kill