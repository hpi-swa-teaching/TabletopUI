running
setUpPlayers

	| player1 player2 |
	
	player1 := TTCharacter newWithName: 'Pia' role: #player.
	player2 := TTCharacter newWithName: 'Paul' role: #player.
	
	^ { player1 . player2 } asOrderedCollection