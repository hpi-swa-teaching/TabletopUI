running
setUp

	| screen game player1 player2 |
	
	super setUp.
	
	player1 := TTPlayer new
		name: 'Gustavo';
		role: #gamemaster.
	player2 := TTPlayer new
		name: 'Giuseppe'.
	game := TTGame new
		players: {player1 .  player2} asOrderedCollection.
	screen := TTGameScreen new
		inputField: TTInputField new;
		game: game.
	
	playerSelectionMenu := TTPlayerSelectionMenu newWithGame: game