as yet unclassified
test01clientMessageToServer

	| params deadline crashes1 crashes2 |
	crashes1 := false.
	crashes2 := false.
	self serverRef addEntry: TTMockNetworkObject new forId: 'MOCKNWO'.
	params := Dictionary new.
	params at: 'val' put: 'E'.
	Processor yield.
	
	self clientNWM1 send: #setFrom: to: 'MOCKNWO' with: params.
	deadline := DateAndTime now + (Duration milliSeconds: 2000).
	Processor activeProcess priority: Processor userBackgroundPriority.
	[(self serverRef resolve: 'MOCKNWO') val = 'E' or: [DateAndTime now > deadline]] whileFalse: [
		(Delay forMilliseconds: 10) wait.
		Processor yield].
	self assert: (self serverRef resolve: 'MOCKNWO') val = 'E'.
	[(self clientNWM1Ref resolve: 'MOCKNWO') val] on: Error do: [crashes1 := true].
	[(self clientNWM2Ref resolve: 'MOCKNWO') val] on: Error do: [crashes2 := true].
	self assert: crashes1.
	self assert: crashes2