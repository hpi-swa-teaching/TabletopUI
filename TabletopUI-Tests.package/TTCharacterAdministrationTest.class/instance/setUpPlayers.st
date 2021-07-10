running
setUpPlayers

	| player1 player2 |
	
	player1 := TTCharacter newWithName: 'Pia' role: TTCharacter player.
	player2 := TTCharacter newWithName: 'Paul' role: TTCharacter player.
	
	^ { player1 . player2 } asOrderedCollection