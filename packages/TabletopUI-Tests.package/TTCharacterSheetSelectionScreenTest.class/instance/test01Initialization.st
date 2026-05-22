testing
test01Initialization

	| freshScreen |
	freshScreen := TTCharacterSheetSelectionScreen new.
	self assert: freshScreen selectedIndex equals: 1.
	self assert: freshScreen characterSheets equals: Dictionary new.