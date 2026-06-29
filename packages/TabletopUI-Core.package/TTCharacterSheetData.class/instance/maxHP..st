accessing-health
maxHP: anObject

	maxHP := anObject asNumber.
	self currentHP asNumber > self maxHP asNumber
		ifTrue: [self currentHP: self maxHP].
	self
		changed: #maxHP;
		changed: #currentHP