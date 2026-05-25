initialize-release
initialize
	
	super initialize.
	self abilities: Dictionary new.
	self initializeSkillsLookup.
	self initializeSavingThrowsLookup.