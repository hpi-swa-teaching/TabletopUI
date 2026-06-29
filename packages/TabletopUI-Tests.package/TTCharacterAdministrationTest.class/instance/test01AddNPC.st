testing
test01AddNPC

	| npc |
	
	self characterAdministration addNPC: (TTCharacter newWithName: 'Nele' role: TTCharacter npc).
	npc := self characterAdministration npcs last.
	self 
		assert: npc role equals: TTCharacter npc;
		assert: npc name equals: 'Nele'