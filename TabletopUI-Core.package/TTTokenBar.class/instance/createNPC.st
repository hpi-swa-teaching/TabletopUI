npc creation
createNPC

	| npc |
	
	npc := TTCharacter newWithName: self currentName.
	self 
		currentName: '';
		changed: #currentName.
	self game addNPC: npc.
	self map createTokenForNPC: npc