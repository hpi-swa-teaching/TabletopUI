tasks
openCharacterSheetDisplay
	
	| characterSheetDisplay |
	characterSheetDisplay := (TTCharacterSheetDisplay 
		openWith: (self characterAdministration activePlayer sheet) 
		inputField: self inputField).
	characterSheetDisplay label: (self characterAdministration activePlayer name).
	self addDependent: characterSheetDisplay model. 
	^ characterSheetDisplay
