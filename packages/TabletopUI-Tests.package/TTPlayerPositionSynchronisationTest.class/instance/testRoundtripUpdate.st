testing
testRoundtripUpdate
	
	self changeTokenPositionOn: self clients second.
	
	self assert: self clients first getState = self clients second getState.