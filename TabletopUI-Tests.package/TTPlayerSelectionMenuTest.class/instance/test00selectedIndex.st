testing
test00selectedIndex

	playerSelectionMenu setIndex: 1.
	self assert: playerSelectionMenu selectedIndex equals: 1.
	playerSelectionMenu setIndex: 2.
	self assert: playerSelectionMenu selectedIndex equals: 2.
	playerSelectionMenu setIndex: 0.
	self assert: playerSelectionMenu selectedIndex equals: 2

