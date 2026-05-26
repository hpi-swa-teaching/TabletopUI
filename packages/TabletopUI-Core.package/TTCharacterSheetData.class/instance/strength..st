accessing - abilities
strength: anObject

	self abilities at: #strength put: (((anObject asNumber) max: 1) min: 30).
	self changesForAbility: #strength