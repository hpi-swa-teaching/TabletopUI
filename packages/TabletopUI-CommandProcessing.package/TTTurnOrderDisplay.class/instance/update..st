accessing
update: aSymbol

	self halt.
	aSymbol = #fightingPlayersNames ifTrue: [self changed: #fightingPlayersNames].
	aSymbol = #currentPlayerName ifTrue: [
		self changed: #currentPlayerName.].
	super update: aSymbol