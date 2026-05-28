testing
test09GetState

	| state |
	self assertContextHasGameStateKey.

	state := self context getState.

	self
		assert: (state includesKey: TTGameStateKeys keyCurrentPlayer);
		assert: ((state at: TTGameStateKeys keyCurrentPlayer) isKindOf: String);
		assert: (state includesKey: TTGameStateKeys keyFightingPlayerNames);
		assert: ((state at: TTGameStateKeys keyFightingPlayerNames) isKindOf: Array);
		assert: ((state at: TTGameStateKeys keyFightingPlayerNames)
			allSatisfy: [:each | each isKindOf: String]);
		assert: ((state at: TTGameStateKeys keyFightingPlayerNames)
			includes: (state at: TTGameStateKeys keyCurrentPlayer))