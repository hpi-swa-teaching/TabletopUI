as yet unclassified
bounceBackTestFor: NetworkManagerSubclass

	| receiver nwm ref params deadline |
	receiver := TTMockNetworkReceiver newOnPort: 16000.
	self assert: receiver connection tcpSocket isValid.
	nwm := NetworkManagerSubclass new.
	
	Processor yield.
	self assert: receiver connection tcpSocket isValid.
	nwm connectTo: 'localhost' tcpPort: 16000.
	ref := TTReferenceManager new.
	nwm referenceManager: ref.
	ref addEntry: TTMockNetworkObject new forId: 'NWMO'.
	params := Dictionary new.
	params at: 'val' put: 'test'.
	receiver connection startListening.
	Processor yield.
	nwm send: #setFrom: to: 'NWMO' with: params.
	Processor yield.
	deadline := DateAndTime now + (Duration milliSeconds: 2000).
	
	[(ref resolve: 'NWMO') val = 49 or: [DateAndTime now > deadline]] whileFalse: [Processor yield].
	self assert: (ref resolve: 'NWMO') val = 'test'.
	
	receiver terminate