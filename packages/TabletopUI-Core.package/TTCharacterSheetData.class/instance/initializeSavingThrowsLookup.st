setup - initialization
initializeSavingThrowsLookup
	
	self savingThrowsLookup: Dictionary new.
	self class savingThrowAbilities do: [:ability | self savingThrowsLookup at: ability put: 0]