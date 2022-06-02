initialize-release
initializeSkillsLookup
	
	self skillsLookup: Dictionary new.
	self skillsLookup 
		at: #acrobatics put: self defaultProficiencyMultiplier;
		at: #animalHandling put: self defaultProficiencyMultiplier;
		at: #arcana put: self defaultProficiencyMultiplier;
		at: #athletics put: self defaultProficiencyMultiplier;
		at: #deception put: self defaultProficiencyMultiplier;
		at: #history put: self defaultProficiencyMultiplier;
		at: #insight put: self defaultProficiencyMultiplier;
		at: #intimidation put: self defaultProficiencyMultiplier;
		at: #investigation put: self defaultProficiencyMultiplier;
		at: #medicine put: self defaultProficiencyMultiplier;
		at: #nature put: self defaultProficiencyMultiplier;
		at: #perception put: self defaultProficiencyMultiplier;
		at: #performance put: self defaultProficiencyMultiplier;
		at: #persuation put: self defaultProficiencyMultiplier;
		at: #religion put: self defaultProficiencyMultiplier;
		at: #sleightOfHand put: self defaultProficiencyMultiplier;
		at: #stealth put: self defaultProficiencyMultiplier;
		at: #survival put: self defaultProficiencyMultiplier
		