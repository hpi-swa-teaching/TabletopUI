setup - initialization
initialize
	
	super initialize.
	self abilities: Dictionary new.
	self
		experiencePoints: 0;
		initializeAbilities;
		initializeSkillsLookup;
		initializeSavingThrowsLookup;
		initializeHP;
		initializeDeathSaves;
		initializeStats;
		initializeInformation;
		initializeIdentity;
		initializeAttacks;
		initializeWallet;
		initializeSpellcasting