as yet unclassified
testLoadStateDelegatesToWindow

	| state |
	state:=  TTTabletopWindow emptyState.
	self manager loadState: state.
	
	self assert: state equals: self window currentState.
	
	