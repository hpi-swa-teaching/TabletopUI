accessing-health
currentHP: aNumber

	currentHP := aNumber.
	self 
		clampCurrentHP;
		changed: #currentHP