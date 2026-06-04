as yet unclassified
testRoundtripUpdate
	
	self clients second changeTokenPosition.
	
	self assert: self clients first getState = self clients second getState.