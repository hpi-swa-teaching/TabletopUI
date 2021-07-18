initialization
initializeFormFor: aTTCharacter

	(aTTCharacter isNPC) ifTrue: [
		self newForm: self NPCForm]
	ifFalse: [
		self newForm: self playerForm]