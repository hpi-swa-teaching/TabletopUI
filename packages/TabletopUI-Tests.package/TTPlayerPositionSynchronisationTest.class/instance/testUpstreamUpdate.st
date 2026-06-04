as yet unclassified
testUpstreamUpdate

	self client changeTokenPosition.
	self assert: self server getState = self client getState.
