npc creation
createNPC: aTTCharacter

	self characterAdministration addNPC: aTTCharacter.
	self map createTokenFor: aTTCharacter