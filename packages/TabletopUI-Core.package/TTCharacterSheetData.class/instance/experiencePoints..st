accessing - identity
experiencePoints: anObject

	experiencePoints := anObject asNumber.
	self changed: #experiencePoints.
	self changed: #level.
	self changed: #levelString.
	self changed: #proficiencyBonus.
	self broadcastSkillAndSavingThrowChanges