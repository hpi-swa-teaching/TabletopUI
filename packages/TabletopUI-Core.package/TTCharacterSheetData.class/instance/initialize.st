initialize-release
initialize

	super initialize.
	self initializeProficiencyLookup.
	self initializeHP.
	self level: self defaultLevel.
	self currentHitDice: self level.
	self hitDieType: self defaultHitDieType.
	self armorClass: self defaultArmorClass.
	self speed: self defaultSpeed.
	self failedDeathSaves: self defaultDeathSaves.
	self successfulDeathSaves: self defaultDeathSaves.
	self gold: self defaultGold