initialize-release
initializeCustomizedCharacterWith: aDictionary
	
	super initialize.
	self initializeBaseValuesWith: (aDictionary at: #abilities);
		initializeThrowsLookup;
		initializeSkillsLookup;
		initializeHPWith: (TTCharacterSheetData HPValues at: (aDictionary at: #class));
		level: self defaultLevel;
		proficiencyValue: self defaultProficiencyValue;
		currentHitDice: self level;
		hitDieType: self defaultHitDieType;
		armorClass: self defaultArmorClass;
		speed: self defaultSpeed;
		failedDeathSaves: self defaultDeathSaves;
		successfulDeathSaves: self defaultDeathSaves;
		gold: self defaultGold