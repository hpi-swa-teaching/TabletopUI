testing
test03getActivePlayer

	playerSelectionMenu selectedIndex: 1.
	self 
		assert: playerSelectionMenu getActivePlayer role equals: #gamemaster;
		assert: playerSelectionMenu getActivePlayer name equals: 'Gustavo'.
	playerSelectionMenu selectedIndex: 2.
	self 
		assert: playerSelectionMenu getActivePlayer role equals: #player;
		assert: playerSelectionMenu getActivePlayer name equals: 'Giuseppe'
