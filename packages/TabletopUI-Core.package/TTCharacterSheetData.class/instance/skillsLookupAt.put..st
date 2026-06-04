accessing - skills
skillsLookupAt: aSymbol put: anObject

	self skillsLookup at: aSymbol put: anObject.
	self changesForSkill: aSymbol