tasks
openCharacterSheetDisplay
	
	| characterSheetDisplay |
	characterSheetDisplay := (TTCharacterSheetDisplay openWith: (self characterAdministration activePlayer sheet) inputField: self inputField).
	characterSheetDisplay label: (self characterAdministration activePlayer name).
	characterSheetDisplay model subWindowManager: self subWindowManager.
	self subWindowManager register: characterSheetDisplay.
	^ characterSheetDisplay
