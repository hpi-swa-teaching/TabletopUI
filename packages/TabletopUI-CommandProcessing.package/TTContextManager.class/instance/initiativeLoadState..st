state
initiativeLoadState: aContextDict

	| rollsDict |
	self changeToContext: (TTInitiativeContext new
		parser: self;
		yourself).
	rollsDict := aContextDict at: TTGameStateKeys keyRolls ifAbsent: [Dictionary new].
	rollsDict keysAndValuesDo: [:name :value | self context rolls add: name -> value]