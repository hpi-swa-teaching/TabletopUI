accessing
createNPC: aTTCharacter

	self canCreateNpc
		ifTrue: [self networkFacade updateGamescreen: self createNPC: aTTCharacter]