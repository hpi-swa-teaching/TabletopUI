testing
test05GetState

	| state |
	self tile
		mapCoordinates: 2 @ 3;
		position: 50 @ 75.
	state := self token getState.

	self
		assert: (state isKindOf: Dictionary);
		assert: (state includesKey: TTGameStateKeys keyCharacter);
		assert: ((state at: TTGameStateKeys keyCharacter) isKindOf: Dictionary);
		assert: (state includesKey: TTGameStateKeys keyTileCoordinates);
		assert: ((state at: TTGameStateKeys keyTileCoordinates) isKindOf: Dictionary)