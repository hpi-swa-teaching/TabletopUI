testing
test02selectedIndex

	playerSelectionMenu selectedIndex: 1.
	self assert: (playerSelectionMenu index) equals: 1.
	playerSelectionMenu selectedIndex: 2.
	self assert: (playerSelectionMenu index) equals: 2.
	playerSelectionMenu selectedIndex: 0.
	self assert: (playerSelectionMenu index) equals: 2

