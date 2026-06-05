as yet unclassified
testUpstreamUpdate

	self changeTokenPositionOn: self clients first.
	self assert: self server getState = self clients first getState.
