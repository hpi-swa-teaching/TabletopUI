rules - combat
clampCurrentHP

	"Direct access to avoid infinite recursion"
	currentHP := ((self currentHP asNumber max: 0) min: self maxHP).
	self changed: #currentHP
