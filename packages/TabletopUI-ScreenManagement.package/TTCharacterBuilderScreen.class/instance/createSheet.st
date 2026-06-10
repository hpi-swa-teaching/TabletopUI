accessing
createSheet

	| player|
	
	player := (self characterAdministration players) at: self characterIndex.
	player sheet initializeCustomizedCharacterWith: self choices