accessing - identity
experiencePoints: anObject

	experiencePoints := anObject asNumber.
	self changed: #experiencePoints.
	self changed: #level.
	self changed: #levelString.
	self changed: #proficiencyBonus.
	self broadcastSkillAndSavingThrowChanges.
	self changed: #hitDiceTotal.
	self changed: #hitDiceRemaining.
	self hitDiceRemaining: ((self hitDiceRemaining min: self level) max: 0)