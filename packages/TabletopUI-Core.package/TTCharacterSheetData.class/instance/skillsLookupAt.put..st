accessing - skills
skillsLookupAt: aSymbol put: anObject

	self skillsLookup at: aSymbol put: (((anObject asNumber) max: 0) min: 1).
	self changesForSkill: aSymbol