testing
test06GetState

	|state|
	state := self character getState.
	
	self 
		assert: (state isKindOf: Dictionary);
		
		assert: (state includesKey: #name);
		assert: ((state at: #name) isKindOf: String);
		assert: (state includesKey: #role);
		assert: ({ #npc. #player } includes: (state at: #role)).
	self flag: #TODO:
		"add characterSheet test"

		