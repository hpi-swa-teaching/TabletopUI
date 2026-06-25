accessing - combat
hitDieType: anObject

	hitDieType := anObject.
	self
		changed: #hitDieType;
		changed: #maxHP.
	self clampCurrentHP