initialization
initializeFormFor: aTTCharacter

	(aTTCharacter isNPC) ifTrue: [
		self newForm: self NPCForm]
	ifFalse: [
		aTTCharacter token = 'default'
			ifTrue: [self newForm: self defaultPlayerForm]
			ifFalse: [self newForm: (self customizedPlayerFormWith: aTTCharacter token)]]