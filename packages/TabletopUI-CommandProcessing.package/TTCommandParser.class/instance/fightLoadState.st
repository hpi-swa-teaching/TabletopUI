initialize-release
fightLoadState

	| contextDict currentPlayerName fakeCharacters fightContext fightingNames |
	fightingNames := contextDict at: TTGameStateKeys keyFightingPlayerNames ifAbsent: [#()].
	fakeCharacters := (fightingNames collect: [:aName | TTCharacter newWithName: aName role: TTCharacter player]) asOrderedCollection.
	fakeCharacters isEmpty ifFalse: [
		fightContext := (TTFightContext newWithfightOrder: fakeCharacters) parser: self.
		currentPlayerName := contextDict at: TTGameStateKeys keyCurrentPlayer ifAbsent: [nil].
		currentPlayerName ifNotNil: [
			fightContext currentPlayer: (fakeCharacters
				detect: [:each | each name = currentPlayerName]
				ifNone: [fakeCharacters first])].
		self applyContextWithoutNotifying: fightContext]