assertions
assertContextHasGameStateKey

	| state |
	state := self context getState.

	self
		assert: (state isKindOf: Dictionary);
		assert: (state includesKey: TTGameStateKeys keyGameState);
		assert: (state at: TTGameStateKeys keyGameState) = self context gameState