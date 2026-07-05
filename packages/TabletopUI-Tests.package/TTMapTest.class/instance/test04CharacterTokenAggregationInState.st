testing
test04CharacterTokenAggregationInState

	| state characterTokens aliceEntry |
	self map initializePlayerTokens: (OrderedCollection new
		add: (TTCharacter newWithName: 'Alice' role: TTCharacter player);
		yourself).
	state := self map getState.
	characterTokens := state at: TTGameStateKeys keyCharacterTokens.

	self assert: (characterTokens includesKey: 'Alice').
	aliceEntry := characterTokens at: 'Alice'.
	self
		assert: (aliceEntry isKindOf: Dictionary);
		assert: (aliceEntry includesKey: TTGameStateKeys keyCharacter);
		assert: (aliceEntry includesKey: TTGameStateKeys keyTileCoordinates);
		assert: ((aliceEntry at: TTGameStateKeys keyCharacter) at: TTGameStateKeys keyName) = 'Alice'