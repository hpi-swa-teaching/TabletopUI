accessing - abilities
intelligence: anObject

	self abilities at: #intelligence put: (((anObject asNumber) max: 1) min: 30).
	self changesForAbility: #intelligence