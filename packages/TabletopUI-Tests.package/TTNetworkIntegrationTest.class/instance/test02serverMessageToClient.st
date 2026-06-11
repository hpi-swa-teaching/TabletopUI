as yet unclassified
test02serverMessageToClient

	| params deadline |
	self clientNWM1Ref addEntry: TTMockNetworkObject new forId: 'MOCKNWO'.
	
	params := Dictionary new.
	params at: 'val' put: 'chess'.
	Processor yield.
	
	self clientNWM2Ref addEntry: TTMockNetworkObject new forId: 'MOCKNWO'.
	
	self serverNWM send: #setFrom: to: 'MOCKNWO' with: params.
	deadline := DateAndTime now + (Duration milliSeconds: 2000).
	[((self clientNWM1Ref resolve: 'MOCKNWO') val = 'chess' and: [(self clientNWM2Ref resolve: 'MOCKNWO') val = 'chess']) or: [DateAndTime now > deadline]] whileFalse: [
		(Delay forMilliseconds: 10) wait.
		Processor yield].
	self assert: (self clientNWM1Ref resolve: 'MOCKNWO') val = 'chess'.
	self assert: (self clientNWM2Ref resolve: 'MOCKNWO') val = 'chess'