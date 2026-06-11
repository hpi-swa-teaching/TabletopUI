as yet unclassified
receiveTestFor: NetworkManagerSubclass

	| nwm params msg |
	nwm := NetworkManagerSubclass new.
	
	Processor yield.
	nwm connectTo: 'localhost' tcpPort: 16000.
	nwm referenceManager: self ref.
	self ref addEntry: TTMockNetworkObject new forId: 'NWMO'.
	params := Dictionary new.
	params at: 'val' put: '42'.
	msg := TTJSONifier createNetworkMessage: #setFrom: to: 'NWMO' with: params.
	
	self receiver connection sendMessage: msg.
	Processor yield.
	self assert: (self ref resolve: 'NWMO') val = '42'