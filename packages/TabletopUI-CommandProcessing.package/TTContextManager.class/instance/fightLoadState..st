state
fightLoadState: aContextDict

	| currentPlayerName fightContext fightingNames |
	fightingNames := aContextDict at: TTGameStateKeys keyFightingPlayerNames ifAbsent: [#()].
	fightingNames isEmpty ifFalse: [
		fightContext := (TTFightContext newWithfightOrder: fightingNames) parser: self.
		currentPlayerName := aContextDict at: TTGameStateKeys keyCurrentPlayer ifAbsent: [nil].
		currentPlayerName ifNotNil: [
			fightContext currentPlayer: currentPlayerName].
		self changeToContext: fightContext]