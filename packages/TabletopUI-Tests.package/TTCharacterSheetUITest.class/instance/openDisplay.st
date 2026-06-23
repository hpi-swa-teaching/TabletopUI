running
openDisplay

	| display |
	
	display := self toolbar openCharacterSheetDisplay.
	self openedDisplays add: display.
	^ display