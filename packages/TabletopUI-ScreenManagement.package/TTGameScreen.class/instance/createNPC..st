npc creation
createNPC: aTTCharacter

	self canCreateNpc ifTrue: [
		self characterAdministration addNPC: aTTCharacter.
		self map createTokenFor: aTTCharacter]