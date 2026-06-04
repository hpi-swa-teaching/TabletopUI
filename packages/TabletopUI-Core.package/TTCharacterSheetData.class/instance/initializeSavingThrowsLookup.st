setup - initialization
initializeSavingThrowsLookup
	
	self savingThrowsLookup: Dictionary new.
	self class abilityNames do: [:ability | self savingThrowsLookup at: ability put: 0]