npc creation
addNPCToGameState: aTTCharacter

		self characterAdministration addNPC: aTTCharacter.
		self map createTokenFor: aTTCharacter.