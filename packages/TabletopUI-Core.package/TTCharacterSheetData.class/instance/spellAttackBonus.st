accessing - spellcasting
spellAttackBonus

	^ (self proficiencyBonus + (self modifierOf: self spellAbility)) asString