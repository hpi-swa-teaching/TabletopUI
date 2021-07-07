initialization
initializeFormFor: aTTCharacter

	(aTTCharacter isPlayer) ifTrue: [
		self newForm: self playerForm]
	ifFalse: [
		self newForm: self NPCForm]