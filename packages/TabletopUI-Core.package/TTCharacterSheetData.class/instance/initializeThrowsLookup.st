initialize-release
initializeThrowsLookup
	
	self throwsLookup: Dictionary new.
	self throwsLookup 
		at: #strengthSave put: self defaultProficiencyMultiplier;
		at: #dexteritySave put: self defaultProficiencyMultiplier;
		at: #constitutionSave put: self defaultProficiencyMultiplier;
		at: #intelligenceSave put: self defaultProficiencyMultiplier;
		at: #wisdomSave put: self defaultProficiencyMultiplier;
		at: #charismaSave put: self defaultProficiencyMultiplier