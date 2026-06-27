testing-spellcasting
test86SpellAbilityChange

	self characterSheet spellAbility: #wisdom.
	self assert: self characterSheet spellAbility equals: #wisdom