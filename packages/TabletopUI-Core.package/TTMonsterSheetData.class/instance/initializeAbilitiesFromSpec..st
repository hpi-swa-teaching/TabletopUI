initialize-release
initializeAbilitiesFromSpec: aDictionary

	self strength: (aDictionary at: #strength);
		dexterity: (aDictionary at: #dexterity);
		constitution: (aDictionary at: #constitution);
		intelligence: (aDictionary at: #intelligence);
		wisdom: (aDictionary at: #wisdom);
		charisma: (aDictionary at: #charisma)