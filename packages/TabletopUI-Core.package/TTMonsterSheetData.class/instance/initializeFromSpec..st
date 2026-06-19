initialize-release
initializeFromSpec: aDictionary

	self
		initializeThrowsLookup;
		initializeSkillsLookup; "todo: implement skills"
		initializeBaseValuesFromSpec: aDictionary.
	self
		maxHP: (aDictionary at: #hit_points);
		currentHP: (aDictionary at: #hit_points);
		temporaryHP: self defaultTemporaryHP;
		armorClass: (aDictionary at: #armor_class);
		speed: (aDictionary at: #speed);
		additionalSpeeds: (aDictionary at: #additional_speeds ifAbsent: [#()]);
		level: self defaultLevel;
		proficiencyValue: (aDictionary at: #proficiency_value);
		currentHitDice: self level;
		hitDieType: self defaultHitDieType;
		failedDeathSaves: self defaultDeathSaves;
		successfulDeathSaves: self defaultDeathSaves;
		gold: self defaultGold.
	self
		monsterSize: (aDictionary at: #size);
		monsterType: (aDictionary at: #type);
		alignment: (aDictionary at: #alignment);
		challengeRating: (aDictionary at: #challenge_rating);
		senses: (aDictionary at: #senses ifAbsent: ['']);
		savingThrows: (aDictionary at: #saving_throws ifAbsent: ['']);
		languages: (aDictionary at: #languages ifAbsent: ['']);
		damageVulnerabilities: (aDictionary at: #damage_vulnerabilities ifAbsent: ['']);
		damageResistances: (aDictionary at: #damage_resistances ifAbsent: ['']);
		damageImmunities: (aDictionary at: #damage_immunities ifAbsent: ['']);
		conditionImmunities: (aDictionary at: #condition_immunities ifAbsent: ['']);
		skills: (aDictionary at: #skills ifAbsent: ['']);
		traits: (aDictionary at: #special_abilities ifAbsent: [#()]);
		actions: (aDictionary at: #actions ifAbsent: [#()]);
		legendaryActions: (aDictionary at: #legendary_actions ifAbsent: [#()])
		