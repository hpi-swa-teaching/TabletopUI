accessing-health
currentHP: anObject

	currentHP := anObject.
	self 
		clampCurrentHP;
		changed: #currentHP