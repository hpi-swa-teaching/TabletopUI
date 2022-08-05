accessing
update: aSymbol

	aSymbol = #fightingPlayersNames ifTrue: [self changed: #fightingPlayersNames].
	aSymbol = #currentPlayerName ifTrue: [self changed: #currentPlayerName].
	super update: aSymbol
	