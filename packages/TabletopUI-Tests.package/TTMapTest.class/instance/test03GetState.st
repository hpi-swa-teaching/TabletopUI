testing
test03GetState

	| state characterTokens |
	self map initializePlayerTokens: (OrderedCollection new
		add: (TTCharacter newWithName: 'Alice' role: TTCharacter player);
		yourself).
	state := self map getState.
	characterTokens := state at: TTGameStateKeys keyCharacterTokens.

	self
		assert: (state isKindOf: Dictionary);
		assert: (state includesKey: TTGameStateKeys keyCharacterTokens);
		assert: (characterTokens isKindOf: Dictionary);
		assert: characterTokens size = 1