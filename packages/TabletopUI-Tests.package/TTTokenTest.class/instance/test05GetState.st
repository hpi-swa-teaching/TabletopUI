testing
test05GetState

	"|state |
	state := self token getState.
	
	self 
		assert: (state isKindOf: Dictionary);
		
		assert: (state includesKey: #character);
		assert: ((state at: #character) isKindOf: Dictionary);
		assert: (state includesKey: #mapCoordinates);
		assert: ((state at: #mapCoordinates) isKindOf: Dictionary)."
		