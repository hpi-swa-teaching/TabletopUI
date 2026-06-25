accessing - identity
experiencePoints: anObject

	experiencePoints := anObject asNumber.
	self
		broadcastSkillAndSavingThrowChanges;
		updateHitDice;
		changed: #experiencePoints;
		changed: #level;
		changed: #levelString;
		changed: #proficiencyBonus;
		changed: #maxHP;
		clampCurrentHP;
		changed: #spellSaveDC;
		changed: #spellAttackBonus