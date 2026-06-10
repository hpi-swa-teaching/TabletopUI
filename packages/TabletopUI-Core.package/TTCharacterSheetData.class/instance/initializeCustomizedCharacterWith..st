initialize-release
initializeCustomizedCharacterWith: aDictionary

	
	"data := TTCharacterSheetData characterTypes at: aSymbol."
	
	super initialize.
	self initializeBaseValuesWith: (aDictionary at: 3);
		initializeThrowsLookup;
		initializeSkillsLookup;
		initializeHPWith: (TTCharacterSheetData HPValues at: (aDictionary at: 1));
		level: self defaultLevel;
		proficiencyValue: self defaultProficiencyValue;
		currentHitDice: self level;
		hitDieType: self defaultHitDieType;
		armorClass: self defaultArmorClass;
		speed: self defaultSpeed;
		failedDeathSaves: self defaultDeathSaves;
		successfulDeathSaves: self defaultDeathSaves;
		gold: self defaultGold