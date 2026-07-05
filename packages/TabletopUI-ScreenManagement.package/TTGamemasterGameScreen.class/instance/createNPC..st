npc creation
createNPC: aTTCharacter
	
	(self playerSelectionMenu nameList includes: (aTTCharacter name asString)) ifFalse: [
		self networkFacade
			updateGamescreen: self
			createNPC: aTTCharacter]