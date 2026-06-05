as yet unclassified
testDownstreamUpdate
	
	self changeTokenPositionOn: self server.
	self assert: self server getState = self clients first getState.
