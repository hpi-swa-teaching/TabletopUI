accessing
test02DifferentPlayers
	| firstDisplay secondDisplay thirdDisplay |
	
	self playerSelectionMenu selectedIndex: 1.
	firstDisplay :=	self toolbar openCharacterSheetDisplay hide; yourself.
	firstDisplay model strength: 10.
	
	self playerSelectionMenu selectedIndex: 2.
	secondDisplay :=	self toolbar openCharacterSheetDisplay hide; yourself.
	secondDisplay model strength: 5.
	
	self playerSelectionMenu selectedIndex: 1.
	thirdDisplay :=	self toolbar openCharacterSheetDisplay hide; yourself.
	self assert: ((thirdDisplay model strength) = '10').
	
	