health and damage
heal: aNumber

	aNumber < 0 ifFalse: [self currentHP: (self currentHP + aNumber min: self maxHP)]