accessing - spellcasting
spellAbility: aSymbol

	spellAbility := aSymbol.
	self
		changed: #spellAbility;
		changed: #spellAbilityString;
		changed: #spellSaveDC;
		changed: #spellAttackBonus