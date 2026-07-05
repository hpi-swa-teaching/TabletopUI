testing
test01clientMessageToServer

	| params crashes1 crashes2 message id |
	id := self randomString.
	message := self randomString.
	crashes1 := false.
	crashes2 := false.
	self serverRef addEntry: TTMockNetworkObject new forId: id.
	params := Dictionary new.
	params at: 'val' put: message.
	Processor yield.
	
	self clientNWM1 send: #setFrom: to: id with: params.
	self waitFor: [(self serverRef resolve: id) val = message] retry: [].
	[(self clientNWM1Ref resolve: id) val] on: Error do: [crashes1 := true].
	[(self clientNWM2Ref resolve: id) val] on: Error do: [crashes2 := true].
	self assert: crashes1.
	self assert: crashes2