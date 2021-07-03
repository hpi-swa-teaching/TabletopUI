npc creation
createNPC

	| npc |
	
	npc := TTCharacter newWithName: self currentName.
	self changed: #resetInputField.
	self game addNPC: npc.
	self map createTokenForNPC: npc