initialize-release
initializeWithPreset: aSymbol

	| data |
	
	data := TTCharacterSheetData characterTypes at: aSymbol.
	
	super initialize.
	self initializeBaseValuesWith: aSymbol;
		initializeThrowsLookup;
		initializeSkillsLookup;
		initializeHPWith: (data at: #maxHP);
		level: self defaultLevel;
		proficiencyValue: self defaultProficiencyValue;
		currentHitDice: self level;
		hitDieType: self defaultHitDieType;
		armorClass: (data at: #armorClass);
		speed: (data at: #speed);
		failedDeathSaves: self defaultDeathSaves;
		successfulDeathSaves: self defaultDeathSaves;
		gold: self defaultGold