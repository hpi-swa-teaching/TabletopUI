accessing - saving throws
changesForSavingThrow: aSymbol

	self update: aSymbol.
	self update: (aSymbol , 'Proficiency') asSymbol.
	self broadcastSavingThrowChanges