testing
test01getActivePlayer

	playerSelectionMenu setIndex: 1.
	self assert: playerSelectionMenu getActivePlayer role equals: #gamemaster.
	self assert: playerSelectionMenu getActivePlayer name equals: 'Gustavo'.
	playerSelectionMenu setIndex: 2.
	self assert: playerSelectionMenu getActivePlayer role equals: #player.
	self assert: playerSelectionMenu getActivePlayer name equals: 'Giuseppe'
