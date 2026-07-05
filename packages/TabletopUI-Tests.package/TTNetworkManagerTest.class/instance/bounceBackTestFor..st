helpers
bounceBackTestFor: networkManagerSubclass

	| nwm params id message |
	id := self randomString.
	message := self randomString.
	nwm := networkManagerSubclass new.
	
	Processor yield.
	nwm referenceManager: self ref.
	nwm connectTo: 'localhost' tcpPort: self defaultTestPort.
	
	self ref addEntry: TTMockNetworkObject new forId: id.
	params := Dictionary new.
	params at: 'val' put: message.
	self receiver connection startListening.
	Processor yield.
	nwm send: #setFrom: to: id with: params.
	Processor yield.
	self waitFor: [(self ref resolve: id) val = message] retry: [].
	nwm end