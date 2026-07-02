setup - initialization
initializeCustomizedCharacterWith: aDictionary
	
	self 
		abilities: (aDictionary at: #abilities);
		race: (aDictionary at: #race);
		speed: ((self class raceSpeedValues) at: (aDictionary at: #race));
		initializeSpellcastingFrom: aDictionary;
		initializeHP