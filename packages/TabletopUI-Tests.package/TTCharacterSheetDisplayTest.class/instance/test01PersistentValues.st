accessing
test01PersistentValues
	| firstDisplay secondDisplay |
	firstDisplay :=	self toolbar openCharacterSheetDisplay hide; yourself.
	firstDisplay model strength: 10.
	secondDisplay :=	self toolbar openCharacterSheetDisplay hide; yourself.
	self assert: ((secondDisplay model strength) = '10').
	
	