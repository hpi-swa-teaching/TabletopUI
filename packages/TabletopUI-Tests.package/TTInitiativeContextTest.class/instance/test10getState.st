testing
test10getState

	| state rollsDict |
	self assertContextHasGameStateKey.
	
	self context rolls add: 'Alice' -> 12.
	
	state := self context getState.
	
	self
		assert: (state includesKey: TTGameStateKeys keyRolls);
		assert: ((state at: TTGameStateKeys keyRolls) isKindOf: Dictionary).
	
	rollsDict := state at: TTGameStateKeys keyRolls.
	self
		assert: rollsDict notEmpty;
		assert: (rollsDict keys allSatisfy: [:key | key isKindOf: String]);
		assert: (rollsDict values allSatisfy: [:val | val isKindOf: Integer]);
		assert: (rollsDict includesKey: 'Alice');
		assert: (rollsDict at: 'Alice') = 12