as yet unclassified
test01clientMessageToServer

	| clientNWM relay serverNWM ref params deadline |
	relay := TTRelayServer new.
	clientNWM := TTClientNetworkManager new.
	
	serverNWM := TTServerNetworkManager new.
	
	serverNWM connectTo: 'localhost' tcpPort: relay getServerPort.
	clientNWM connectTo: 'localhost' tcpPort: relay getClientPort.
	ref := TTReferenceManager new.
	serverNWM referenceManager: ref.
	ref addEntry: TTMockNetworkObject new forId: 'MOCKNWO'.
	params := Dictionary new.
	params at: 'val' put: 'E'.
	Processor yield.
	relay checkClientConnect.
	Processor yield.
	relay checkClientConnect.
	Processor yield.
	
	clientNWM send: #setFrom: to: 'MOCKNWO' with: params.
	deadline := DateAndTime now + (Duration milliSeconds: 2000).
	Processor activeProcess priority: Processor userBackgroundPriority.
	[(ref resolve: 'MOCKNWO') val = 'E' or: [DateAndTime now > deadline]] whileFalse: [
		(Delay forMilliseconds: 10) wait.
		Processor yield].
	Transcript
		show: 'WHY', (ref resolve: 'MOCKNWO') val;
		cr.
	self assert: (ref resolve: 'MOCKNWO') val = 'E'.
	(ref resolve: 'MOCKNWO') val.
	relay kill