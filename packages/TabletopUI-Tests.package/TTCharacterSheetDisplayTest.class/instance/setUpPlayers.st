accessing
setUpPlayers

	| player1 player2 |
	
	player1 := TTCharacter newWithName: 'Richie' role: TTCharacter player.
	player2 := TTCharacter newWithName: 'Julian' role: TTCharacter player.
	
	player1 sheet: (TTCharacterSheetData new initializeWith: 'default').
	player2 sheet: (TTCharacterSheetData new initializeWith: 'wizard').
	
	^ { player1 . player2 } asOrderedCollection