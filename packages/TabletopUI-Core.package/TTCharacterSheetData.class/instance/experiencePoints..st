accessing - identity
experiencePoints: anObject

	experiencePoints := anObject asNumber.
	self
		broadcastSkillAndSavingThrowChanges;
		updateHitDice;
		changed: #hitDiceTotal;
		changed: #hitDiceRemaining;
		changed: #experiencePoints;
		changed: #level;
		changed: #levelString;
		changed: #proficiencyBonus;
		changed: #spellSaveDC;
		changed: #spellAttackBonus