testing
test04GetState

	| state |
	state := self log getState.

	self
		assert: (state isKindOf: Dictionary);
		assert: (state includesKey: TTGameStateKeys keyActionLogList);
		assert: ((state at: TTGameStateKeys keyActionLogList) isKindOf: Array)