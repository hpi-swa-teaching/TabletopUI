setup - initialization
initializeCustomizedCharacterWith: aDictionary
	
	self 
		abilities: (aDictionary at: #abilities);
		speed: ((self class raceSpeedValues) at: (aDictionary at: #race));
		initializeSpellcastingFrom: aDictionary