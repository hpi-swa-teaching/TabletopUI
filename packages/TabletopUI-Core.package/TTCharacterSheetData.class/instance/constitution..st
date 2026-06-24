accessing - abilities
constitution: anObject

	self
		abilitiesAt: #constitution put: anObject;
		changed: #maxHP;
		clampCurrentHP