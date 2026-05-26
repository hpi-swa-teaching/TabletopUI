accessing - abilities
wisdom: anObject

	self abilities at: #wisdom put: (((anObject asNumber) max: 1) min: 30).
	self changesForAbility: #wisdom