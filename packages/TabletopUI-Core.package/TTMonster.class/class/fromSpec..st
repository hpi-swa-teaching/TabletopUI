initialization
fromSpec: aDictionary

	| sheet |
	sheet := TTMonsterSheetData new.
	sheet initializeFromSpec: aDictionary.
	
	^ self new
		name: (aDictionary at: #name);
		sheet: sheet; "todo: initialize token"
		yourself