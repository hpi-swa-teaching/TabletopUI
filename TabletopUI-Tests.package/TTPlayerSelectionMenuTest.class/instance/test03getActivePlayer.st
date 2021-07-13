testing
test03getActivePlayer

	self playerSelectionMenu selectedIndex: 1.
	self 
		assert: self playerSelectionMenu getActivePlayer role equals: #gamemaster;
		assert: self playerSelectionMenu getActivePlayer name equals: 'Gustavo'.
	self playerSelectionMenu selectedIndex: 2.
	self 
		assert: self playerSelectionMenu getActivePlayer role equals: #player;
		assert: self playerSelectionMenu getActivePlayer name equals: 'Giuseppe'
