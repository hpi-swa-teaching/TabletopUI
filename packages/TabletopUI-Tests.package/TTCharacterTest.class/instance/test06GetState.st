testing
test06GetState

	| state |
	self character
		name: 'h';
		role: TTCharacter player.
	state := self character getState.
	
	self
		assert: (state isKindOf: Dictionary);
		assert: (state includesKey: TTGameStateKeys keyName);
		assert: (state at: TTGameStateKeys keyName) = 'h';
		assert: (state includesKey: TTGameStateKeys keyRole);
		assert: (state at: TTGameStateKeys keyRole) = 'player'