setup - initialization
initializeCustomizedCharacterWith: aDictionary

	self class forTemplate: (aDictionary at: #class) asSymbol.
	
	self 
		abilities: (aDictionary at: #abilities);
		speed: ((self class raceSpeedValues) at: (aDictionary at: #race));
		initializeSpellcastingFrom: aDictionary