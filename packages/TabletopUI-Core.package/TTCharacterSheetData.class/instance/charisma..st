accessing - abilities
charisma: anObject

	self abilities at: #charisma put: (((anObject asNumber) max: 1) min: 30).
	self changesForAbility: #charisma