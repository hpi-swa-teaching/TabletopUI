testing
testRoundtripUpdate

	self changeTokenPositionOn: self clients second.
	
	self assert: self clients first getState equals: self clients second getState.
	self assert: (self server tiles at:2 at:2) occupied