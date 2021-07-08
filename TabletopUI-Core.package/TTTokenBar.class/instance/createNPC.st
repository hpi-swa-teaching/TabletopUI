npc creation
createNPC

	| npc |
	
	npc := TTCharacter newWith: self currentName.
	self 
		currentName: '';
		changed: #currentName.
	self	characterAdministration addNPC: npc.
	self map  createTokenFor: npc