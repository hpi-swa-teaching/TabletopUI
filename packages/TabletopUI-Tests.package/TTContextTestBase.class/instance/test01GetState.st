running
test01GetState

	|state |
	state := self context getState.
	
	self 
		assert: (state isKindOf: Dictionary);
		assert: (state includesKey: #gameState);
		assert: ((state at: #gameState) = self context gameState).