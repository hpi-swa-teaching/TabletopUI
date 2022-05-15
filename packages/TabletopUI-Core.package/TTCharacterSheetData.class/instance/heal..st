health and damage
heal: aNumber

	self currentHP: (self currentHP + aNumber min: self maxHP)