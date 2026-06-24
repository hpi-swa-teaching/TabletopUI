setup - initialization
initialize
	
	super initialize.
	self abilities: Dictionary new.
	self
		initializeAbilities;
		experiencePoints: 0;
		initializeSkillsLookup;
		initializeSavingThrowsLookup;
		initializeDeathSaves;
		initializeStats;
		initializeInformation;
		initializeIdentity;
		initializeAttacks;
		initializeWallet;
		initializeSpellcasting