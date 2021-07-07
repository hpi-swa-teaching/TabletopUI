npc creation
createNPC

	| npc |
	
	npc := TTCharacter newWith: self currentName.
	self 
		currentName: '';
		changed: #currentName.
	self game addNPC: npc.
	self map createTokenFor: npc