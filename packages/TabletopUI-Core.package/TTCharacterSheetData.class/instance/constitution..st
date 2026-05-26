accessing - abilities
constitution: anObject

	self abilities at: #constitution put: (((anObject asNumber) max: 1) min: 30).
	self changesForAbility: #constitution