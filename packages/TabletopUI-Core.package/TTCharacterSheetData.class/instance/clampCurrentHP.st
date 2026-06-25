rules - combat
clampCurrentHP

	currentHP := ((self currentHP asNumber max: 0) min: self maxHP).
	self changed: #currentHP
