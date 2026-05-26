accessing - saving throws
changesForSavingThrow: aSymbol

	self
		update: aSymbol;
		update: (aSymbol , 'Proficiency') asSymbol;
		broadcastSavingThrowChanges