accessing - abilities
dexterity: anObject

	self abilities at: #dexterity put: (((anObject asNumber) max: 1) min: 30).
	self changesForAbility: #dexterity