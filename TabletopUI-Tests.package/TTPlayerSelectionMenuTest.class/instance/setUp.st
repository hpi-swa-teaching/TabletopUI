running
setUp

	| screen characterAdministration player1 player2 |
	
	super setUp.
	
	player1 := TTPlayer new
		name: 'Gustavo';
		role: #gamemaster.
	player2 := TTPlayer new
		name: 'Giuseppe'.
	characterAdministration := TTCharacterAdministration new
		players: {player1 .  player2} asOrderedCollection.
	screen := TTGameScreen new
		characterAdministration: characterAdministration.
	
	playerSelectionMenu := TTPlayerSelectionMenu newWith: characterAdministration