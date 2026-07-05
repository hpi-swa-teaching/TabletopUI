initialize-release
initiativeLoadState: aContextDict

	| rollsDict |
	self changeToContext: (TTInitiativeContext new
		manager: self;
		yourself).
	rollsDict := aContextDict at: TTGameStateKeys keyRolls ifAbsent: [Dictionary new].
	rollsDict keysAndValuesDo: [:name :value | self context rolls add: name -> value]