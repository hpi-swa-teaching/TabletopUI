testing
testUpstreamUpdate

	self changeTokenPositionOn: self clients first.
	self assert: self server getState equals: self clients first getState.
