testing
test03GetState

	|state |
	state := self map getState.
	
	self 
		assert: (state isKindOf: Dictionary);
		assert: (state includesKey: #characterTokens);
		assert: ((state at: #characterTokens) isKindOf: Dictionary).