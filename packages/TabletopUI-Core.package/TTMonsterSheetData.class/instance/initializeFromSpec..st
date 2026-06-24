initialize-release
initializeFromSpec: aDictionary

	super initialize.
	
	self 
		initializeAbilitiesFromSpec: aDictionary;
		maxHP: (aDictionary at: #hit_points);
		currentHP: (aDictionary at: #hit_points);
		armorClass: (aDictionary at: #armor_class);
		speed: (aDictionary at: #speed);
		alignment: (aDictionary at: #alignment);
		proficiencyBonus: (aDictionary at: #proficiency_value).
		
	self
		monsterSize: (aDictionary at: #size);
		monsterType: (aDictionary at: #type);
		additionalSpeeds: (aDictionary at: #additional_speeds ifAbsent: [#()]);
		savingThrows: (aDictionary at: #saving_throws ifAbsent: ['']);
		skills: (aDictionary at: #skills ifAbsent: ['']);
		senses: (aDictionary at: #senses ifAbsent: ['']);
		languages: (aDictionary at: #languages ifAbsent: ['']);
		challengeRating: (aDictionary at: #challenge_rating);
		damageVulnerabilities: (aDictionary at: #damage_vulnerabilities ifAbsent: ['']);
		damageResistances: (aDictionary at: #damage_resistances ifAbsent: ['']);
		damageImmunities: (aDictionary at: #damage_immunities ifAbsent: ['']);
		conditionImmunities: (aDictionary at: #condition_immunities ifAbsent: ['']);
		traits: (aDictionary at: #special_abilities ifAbsent: [#()]);
		actions: (aDictionary at: #actions ifAbsent: [#()]);
		legendaryActions: (aDictionary at: #legendary_actions ifAbsent: [#()])