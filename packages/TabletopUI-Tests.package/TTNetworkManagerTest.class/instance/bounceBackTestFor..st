helpers
bounceBackTestFor: networkManagerSubclass

	| nwm params deadline |
	nwm := networkManagerSubclass new.
	
	Processor yield.
	nwm referenceManager: self ref.
	nwm connectTo: 'localhost' tcpPort: 16000.
	
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