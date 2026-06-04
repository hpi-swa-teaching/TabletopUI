accessing - abilities
changesForAbility: aSymbol

	self
		changed: aSymbol;
		changed: (aSymbol , 'Modifier') asSymbol;
		changed: #spellSaveDC;
		changed: #spellAttackBonus;
		broadcastSkillAndSavingThrowChanges