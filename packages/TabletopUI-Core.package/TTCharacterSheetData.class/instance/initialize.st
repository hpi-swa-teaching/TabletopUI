initialization
initialize
	
	super initialize.
	self abilities: Dictionary new.
	self
		initializeSkillsLookup;
		initializeSavingThrowsLookup;
		initializeHP;
		initializeDeathSaves;
		initializeStats;
		initializeInformation;
		initializeIdentity