testing
test01selectedIndex

	playerSelectionMenu selectedIndex: 1.
	self assert: playerSelectionMenu selectedIndex equals: 1.
	playerSelectionMenu selectedIndex: 2.
	self assert: playerSelectionMenu selectedIndex equals: 2.
	playerSelectionMenu selectedIndex: 0.
	self assert: playerSelectionMenu selectedIndex equals: 2

