initialize-release
initializeHPWith: aSymbol

	self maxHP: (TTCharacterSheetData characterTypes at: aSymbol at: #maxHP).
	self currentHP: self maxHP.
	self temporaryHP: self defaultTemporaryHP