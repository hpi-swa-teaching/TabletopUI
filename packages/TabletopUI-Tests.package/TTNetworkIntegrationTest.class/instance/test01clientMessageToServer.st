testing
test01clientMessageToServer

	| params crashes1 crashes2 |
	crashes1 := false.
	crashes2 := false.
	self serverRef addEntry: TTMockNetworkObject new forId: 'MOCKNWO'.
	params := Dictionary new.
	params at: 'val' put: 'E'.
	Processor yield.
	
	self clientNWM1 send: #setFrom: to: 'MOCKNWO' with: params.
	self waitFor: [(self serverRef resolve: 'MOCKNWO') val = 'E'] retry: [].
	[(self clientNWM1Ref resolve: 'MOCKNWO') val] on: Error do: [crashes1 := true].
	[(self clientNWM2Ref resolve: 'MOCKNWO') val] on: Error do: [crashes2 := true].
	self assert: crashes1.
	self assert: crashes2