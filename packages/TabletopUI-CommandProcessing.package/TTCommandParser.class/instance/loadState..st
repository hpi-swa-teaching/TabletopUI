initialize-release
loadState: aDictionary

	| state contextDict fightingNames fakeCharacters rollsDict |
	self flag: 'characters are reconstructed from names with #player role; full restoration would require looking them up by name in the character administration'.
	contextDict := aDictionary at: TTGameStateKeys keyContext.
	state := contextDict at: TTGameStateKeys keyGameState.
	
	state = #default ifTrue: [self changeToDefaultContext].
	(state = #fight and: self context gameState ~= #fight) ifTrue: [
		fightingNames := contextDict at: TTGameStateKeys keyFightingPlayerNames ifAbsent: [#()].
		fakeCharacters := (fightingNames collect: [:aName | TTCharacter newWithName: aName role: TTCharacter player]) asOrderedCollection.
		fakeCharacters isEmpty ifFalse: [self loadFightContextWithFightOrder: fakeCharacters]].
	state = #initiative ifTrue: [
		self changeToInitiativeContext.
		rollsDict := contextDict at: TTGameStateKeys keyRolls ifAbsent: [Dictionary new].
		rollsDict keysAndValuesDo: [:name :value | self context rolls add: (TTCharacter newWithName: name role: TTCharacter player) -> value]]