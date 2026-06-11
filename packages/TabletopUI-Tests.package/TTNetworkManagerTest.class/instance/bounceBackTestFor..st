as yet unclassified
bounceBackTestFor: NetworkManagerSubclass

	| nwm params deadline |
	nwm := NetworkManagerSubclass new.
	
	Processor yield.
	nwm connectTo: 'localhost' tcpPort: 16000.
	nwm referenceManager: self ref.
	self ref addEntry: TTMockNetworkObject new forId: 'NWMO'.
	params := Dictionary new.
	params at: 'val' put: 'test'.
	self receiver connection startListening.
	Processor yield.
	nwm send: #setFrom: to: 'NWMO' with: params.
	Processor yield.
	deadline := DateAndTime now + (Duration milliSeconds: 2000).
	
	[(self ref resolve: 'NWMO') val = 49 or: [DateAndTime now > deadline]] whileFalse: [Processor yield].
	self assert: (self ref resolve: 'NWMO') val = 'test'