npc creation
createNPC

	| npc |
	
	npc := TTCharacter newWithName: self currentName role: TTCharacter npc.
	self 
		currentName: '';
		changed: #currentName.
	self	characterAdministration addNPC: npc.
	self map  createTokenFor: npc