initialize-release
initializeBaseValuesWith: aSymbol

	| data |
	
	data := TTCharacterSheetData characterTypes at: aSymbol.

	self baseValues: Dictionary new.
	self baseValues
		at: #strength put: (data at: #strength);
		at: #dexterity put: (data at: #dexterity);
		at: #constitution put: (data at: #constitution);
		at: #intelligence put: (data at: #intelligence);
		at: #wisdom put: (data at: #wisdom);
		at: #charisma put: (data at: #charisma)