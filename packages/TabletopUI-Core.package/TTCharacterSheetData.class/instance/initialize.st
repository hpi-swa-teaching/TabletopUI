initialize-release
initialize

	super initialize.
	
	self initializeBaseValues;
		initializeThrowsLookup;
		initializeSkillsLookup;
		initializeHP;
		level: self defaultLevel;
		proficiencyValue: self defaultProficiencyValue;
		currentHitDice: self level;
		hitDieType: self defaultHitDieType;
		armorClass: self defaultArmorClass;
		speed: self defaultSpeed;
		failedDeathSaves: self defaultDeathSaves;
		successfulDeathSaves: self defaultDeathSaves;
		gold: self defaultGold