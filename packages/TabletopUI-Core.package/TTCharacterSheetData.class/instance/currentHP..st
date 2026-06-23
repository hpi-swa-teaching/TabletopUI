accessing-health
currentHP: anObject

	currentHP := (anObject asNumber max: 0) min: self maxHP.
	self changed: #currentHP