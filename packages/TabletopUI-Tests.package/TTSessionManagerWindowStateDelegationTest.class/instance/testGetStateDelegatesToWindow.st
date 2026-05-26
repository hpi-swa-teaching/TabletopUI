as yet unclassified
testGetStateDelegatesToWindow

	| state  |
	self window currentState: TTTabletopWindow emptyState.
	state:= self manager getState.
	
	self assert: state equals: self window currentState.
	
	