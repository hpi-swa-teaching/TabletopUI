accessing - abilities
abilitiesAt: aSymbol put: anObject

	self abilities at: aSymbol put: (((anObject asNumber) max: 1) min: 30).
	self changesForAbility: aSymbol