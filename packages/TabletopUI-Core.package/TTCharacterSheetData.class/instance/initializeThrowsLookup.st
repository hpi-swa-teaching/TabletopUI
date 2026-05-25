initialize-release
initializeThrowsLookup
	
	self throwsLookup: Dictionary new.
	self throwsLookup 
		at: #strengthSave put: 0;
		at: #dexteritySave put: 0;
		at: #constitutionSave put: 0;
		at: #intelligenceSave put: 0;
		at: #wisdomSave put: 0;
		at: #charismaSave put: 0