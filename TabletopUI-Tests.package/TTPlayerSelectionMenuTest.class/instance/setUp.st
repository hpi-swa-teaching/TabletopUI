running
setUp

	| screen characterAdministration player1 player2 |
	
	super setUp.
	
	player1 := TTCharacter newWithName: 'Gustavo' role: TTCharacter gamemaster.
	player2 := TTCharacter newWithName: 'Giuseppe' role: TTCharacter player.

	characterAdministration := TTCharacterAdministration new.
	characterAdministration 
		addPlayer: player1;
		addPlayer: player2.
	screen := TTGameScreen new
		characterAdministration: characterAdministration.
	
	playerSelectionMenu := TTPlayerSelectionMenu newWith: characterAdministration