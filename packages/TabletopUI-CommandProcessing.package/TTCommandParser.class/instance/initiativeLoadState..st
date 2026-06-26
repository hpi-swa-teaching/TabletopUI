initialize-release
initiativeLoadState: aContextDict

	| rollsDict |
	self applyContextWithoutNotifying: (TTInitiativeContext new
		parser: self;
		yourself).
	rollsDict := aContextDict at: TTGameStateKeys keyRolls ifAbsent: [Dictionary new].
	rollsDict keysAndValuesDo: [:name :value | self context rolls add: (TTCharacter newWithName: name role: TTCharacter player) -> value]