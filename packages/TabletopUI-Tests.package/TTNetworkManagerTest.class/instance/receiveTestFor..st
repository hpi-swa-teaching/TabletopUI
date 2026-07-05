helpers
receiveTestFor: networkManagerSubclass

	| nwm params msg id message |
	id := self randomString.
	message := self randomString.
	nwm := networkManagerSubclass new.
	
	Processor yield.
	nwm referenceManager: self ref.
	nwm connectTo: 'localhost' tcpPort: self defaultTestPort.
	
	self ref addEntry: TTMockNetworkObject new forId: id.
	params := Dictionary new.
	params at: 'val' put: message.
	msg := TTJSONifier createNetworkMessage: #setFrom: to: id with: params.
	
	self receiver connection sendMessage: msg.
	Processor yield.
	self assert: (self ref resolve: id) val = message.
	
	nwm end