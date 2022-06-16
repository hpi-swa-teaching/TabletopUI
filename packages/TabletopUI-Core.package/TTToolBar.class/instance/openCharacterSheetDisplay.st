toolbuilder
openCharacterSheetDisplay
	
	^ TTCharacterSheetDisplay openWith: (self characterAdministration activePlayer sheet) name: (self characterAdministration activePlayer name).
