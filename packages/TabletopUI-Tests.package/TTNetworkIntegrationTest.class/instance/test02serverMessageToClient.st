testing
test02serverMessageToClient

	| params message id |
	message := self randomString.
	id := self randomString.
	self clientNWM1Ref addEntry: TTMockNetworkObject new forId: id.
	params := Dictionary new.
	params at: 'val' put: message.
	Processor yield.
	self clientNWM2Ref addEntry: TTMockNetworkObject new forId: id.
	self serverNWM send: #setFrom: to: id with: params.
	self
		waitFor: [(self clientNWM1Ref resolve: id) val = message and: [(self clientNWM2Ref resolve: id) val = message]]
		retry: [].
	self assert: (self serverRef resolve: id) isNil