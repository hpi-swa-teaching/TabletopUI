testing-spellcasting
test90SpellAttackBonusUpdate

	self characterSheet intelligence: 18.
	self assert: self characterSheet spellAttackBonus = '6'