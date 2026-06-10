as yet unclassified
receiveTestFor: NetworkManagerSubclass

	| receiver nwm ref params msg |
	receiver := TTMockNetworkReceiver newOnPort: 16001.
	self assert: receiver connection tcpSocket isValid.
	nwm := NetworkManagerSubclass new.
	
	Processor yield.
	self assert: receiver connection tcpSocket isValid.
	nwm connectTo: 'localhost' tcpPort: 16001.
	ref := TTReferenceManager new.
	nwm referenceManager: ref.
	ref addEntry: TTMockNetworkObject new forId: 'NWMO'.
	params := Dictionary new.
	params at: 'val' put: '42'.
	msg := TTJSONifier createNetworkMessage: #setFrom: to: 'NWMO' with: params.
	
	receiver connection sendMessage: msg.
	Processor yield.
	self assert: (ref resolve: 'NWMO') val = '42'.
	
	receiver terminate