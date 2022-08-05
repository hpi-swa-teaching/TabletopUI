accessing
test01PersistentValues

	| firstDisplay secondDisplay |
	
	firstDisplay :=	self toolbar openCharacterSheetDisplay.
	firstDisplay model strength: 12.
	secondDisplay :=	self toolbar openCharacterSheetDisplay.
	self assert: ((secondDisplay model strength) = '12').
	
	firstDisplay abandon.
	secondDisplay abandon
	
	