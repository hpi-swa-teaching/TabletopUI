testing - integration
test02DifferentPlayers

	| firstDisplay secondDisplay thirdDisplay |
	
	self playerSelectionMenu selectedIndex: 1.
	firstDisplay := self openDisplay.
	firstDisplay model strength: 12.
	
	self playerSelectionMenu selectedIndex: 2.
	secondDisplay := self openDisplay.
	secondDisplay model strength: 5.
	
	self playerSelectionMenu selectedIndex: 1.
	thirdDisplay := self openDisplay.
	self assert: thirdDisplay model strength = '12'.
	self assert: thirdDisplay model className = 'Adventurer'