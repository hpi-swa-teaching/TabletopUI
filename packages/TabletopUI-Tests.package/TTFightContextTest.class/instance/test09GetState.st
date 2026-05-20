testing
test09GetState
	
	| state |
	super test01GetState.
	
	state := self context getState.

	
	self 
		assert: (state includesKey: #currentPlayer);
		assert: ((state at: #currentPlayer) isKindOf: String);
		assert: (state includesKey: #fightingPlayerNames);
		assert: ((state at: #fightingPlayerNames) isKindOf: Array);
		assert: ((state at: #fightingPlayerNames) includes: (state at: #currentPlayer)).