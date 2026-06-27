as yet unclassified
createSheet

	| player|
	
	player := (self characterAdministration players) at: self characterIndex.
	player sheet ifNil: [ player sheet: TTCharacterSheetData new ].
	player sheet initializeCustomizedCharacterWith: self choices