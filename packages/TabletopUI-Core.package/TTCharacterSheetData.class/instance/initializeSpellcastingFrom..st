setup - initialization
initializeSpellcastingFrom: aDictionary

	self 
		initializeSpellsFrom: (aDictionary at: #spells);
		initializeCantripsFrom: (aDictionary at: #cantrips)
	