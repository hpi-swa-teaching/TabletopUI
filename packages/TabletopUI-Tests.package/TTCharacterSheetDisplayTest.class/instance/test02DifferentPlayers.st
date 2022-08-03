accessing
test02DifferentPlayers
	| firstDisplay secondDisplay thirdDisplay |
	
	self playerSelectionMenu selectedIndex: 1.
	firstDisplay :=	self toolbar openCharacterSheetDisplay.
	firstDisplay model strength: 12.
	
	self playerSelectionMenu selectedIndex: 2.
	secondDisplay :=	self toolbar openCharacterSheetDisplay.
	secondDisplay model strength: 5.
	
	self playerSelectionMenu selectedIndex: 1.
	thirdDisplay :=	self toolbar openCharacterSheetDisplay.
	self assert: ((thirdDisplay model strength) = '12').
	
	firstDisplay abandon.
	secondDisplay abandon.
	thirdDisplay abandon
	