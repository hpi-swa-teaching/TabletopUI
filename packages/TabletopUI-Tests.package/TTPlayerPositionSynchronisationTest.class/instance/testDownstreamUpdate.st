as yet unclassified
testDownstreamUpdate

	self server changeTokenPosition.
	
	self assert: self server getState = self client getState.
