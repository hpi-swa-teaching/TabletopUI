helpers
receiveTestFor: networkManagerSubclass

	| nwm params msg |
	nwm := networkManagerSubclass new.
	
	Processor yield.
	nwm referenceManager: self ref.
	nwm connectTo: 'localhost' tcpPort: 16000.
	
	self ref addEntry: TTMockNetworkObject new forId: 'NWMO'.
	params := Dictionary new.
	params at: 'val' put: '42'.
	msg := TTJSONifier createNetworkMessage: #setFrom: to: 'NWMO' with: params.
	
	self receiver connection sendMessage: msg.
	Processor yield.
	self assert: (self ref resolve: 'NWMO') val = '42'.
	
	nwm end