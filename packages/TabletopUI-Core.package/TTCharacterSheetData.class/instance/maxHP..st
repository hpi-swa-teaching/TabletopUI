accessing - combat
maxHP: anObject

	maxHP := anObject asNumber.
	self currentHP > self maxHP
		ifTrue: [self currentHP: self maxHP].
	self
		changed: #maxHP;
		changed: #currentHP