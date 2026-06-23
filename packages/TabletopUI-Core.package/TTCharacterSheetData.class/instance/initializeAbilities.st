setup - initialization
initializeAbilities

	self abilities: Dictionary new.
	self class abilityNames do: [:ability |
		self abilitiesAt: ability put: 10]