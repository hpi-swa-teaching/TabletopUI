accessing
setUpPlayers

	| player1 player2 |
	
	player1 := TTCharacter newWithName: 'Richie' role: TTCharacter player.
	player2 := TTCharacter newWithName: 'Julian' role: TTCharacter player.
	
	player1 sheet: (TTCharacterSheetData new initializeWithPreset: 'default').
	player2 sheet: (TTCharacterSheetData new initializeWithPreset: 'wizard').
	
	^ { player1 . player2 } asOrderedCollection