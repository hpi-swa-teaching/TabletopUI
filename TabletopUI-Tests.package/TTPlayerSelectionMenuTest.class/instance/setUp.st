running
setUp

	| screen characterAdministration player1 player2 |
	
	super setUp.
	
	player1 := TTCharacter newWithName: 'Gustavo' role: #gamemaster.
	player2 := TTCharacter newWithName: 'Giuseppe' role: #player.
	characterAdministration := TTCharacterAdministration new
		players: {player1 .  player2} asOrderedCollection.
	screen := TTGameScreen new
		characterAdministration: characterAdministration.
	
	self playerSelectionMenu: (TTPlayerSelectionMenu newWith: characterAdministration)