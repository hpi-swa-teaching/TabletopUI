testing
test01getActivePlayer

	playerSelectionMenu selectedIndex: 1.
	self assert: playerSelectionMenu getActivePlayer role equals: #gamemaster.
	self assert: playerSelectionMenu getActivePlayer name equals: 'Gustavo'.
	playerSelectionMenu selectedIndex: 2.
	self assert: playerSelectionMenu getActivePlayer role equals: #player.
	self assert: playerSelectionMenu getActivePlayer name equals: 'Giuseppe'
