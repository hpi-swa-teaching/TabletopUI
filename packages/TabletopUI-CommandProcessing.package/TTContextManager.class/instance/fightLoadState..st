initialize-release
fightLoadState: aContextDict

	| currentPlayerName fightContext fightingNames |
	fightingNames := aContextDict at: TTGameStateKeys keyFightingPlayerNames ifAbsent: [#()].
	fightingNames isEmpty ifFalse: [
		fightContext := (TTFightContext newWithfightOrder: fightingNames) manager: self.
		currentPlayerName := aContextDict at: TTGameStateKeys keyCurrentPlayer ifAbsent: [nil].
		fightContext currentPlayer: currentPlayerName.
		self changeToContext: fightContext]