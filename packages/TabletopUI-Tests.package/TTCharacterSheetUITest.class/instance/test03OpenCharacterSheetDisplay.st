testing - construction
test03OpenCharacterSheetDisplay

	| display |
	
	display := self openDisplay.
	self assert: display model class equals: TTCharacterSheetData