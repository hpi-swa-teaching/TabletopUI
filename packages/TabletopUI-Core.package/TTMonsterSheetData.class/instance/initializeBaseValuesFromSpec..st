initialize-release
initializeBaseValuesFromSpec: aDictionary

	self baseValues: Dictionary new.
	self baseValues
		at: #strength put: (aDictionary at: #strength);
		at: #dexterity put: (aDictionary at: #dexterity);
		at: #constitution put: (aDictionary at: #constitution);
		at: #intelligence put: (aDictionary at: #intelligence);
		at: #wisdom put: (aDictionary at: #wisdom);
		at: #charisma put: (aDictionary at: #charisma)