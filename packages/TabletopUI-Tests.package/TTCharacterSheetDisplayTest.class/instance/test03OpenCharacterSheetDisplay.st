accessing
test03OpenCharacterSheetDisplay

	| display |
	
	display := self toolbar openCharacterSheetDisplay.
	self assert: display model class equals: TTCharacterSheetData.
	display abandon
	