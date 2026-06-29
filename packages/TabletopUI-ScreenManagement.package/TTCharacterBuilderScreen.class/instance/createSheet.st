initialize-release
createSheet

	| player|
	
	player := (self characterAdministration players) at: self characterIndex.
	player sheet: (TTCharacterSheetData forTemplate: (self choices at: #class) asSymbol).
	player sheet initializeCustomizedCharacterWith: self choices