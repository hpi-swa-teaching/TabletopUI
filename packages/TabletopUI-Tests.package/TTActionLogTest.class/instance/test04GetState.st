testing
test04GetState

	|state|
	state := self log getState.
	
	self 
		assert: (state isKindOf: Dictionary);
		
		assert: (state includesKey: #actionLogList);
		assert: ((state at: #actionLogList) isKindOf: Array).
		