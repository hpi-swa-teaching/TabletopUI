testing
testDownstreamUpdate
	
	self changeTokenPositionOn: self server.
	self assert: self server getState equals: self clients first getState.
	
