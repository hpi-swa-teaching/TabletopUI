setup - initialization
initialize
	
	super initialize.
	self
		initializeAbilities;
		experiencePoints: 0;
		initializeHP;
		initializeSkillsLookup;
		initializeSavingThrowsLookup;
		initializeDeathSaves;
		initializeStats;
		initializeInformation;
		initializeIdentity;
		initializeAttacks;
		initializeWallet;
		initializeSpellcasting