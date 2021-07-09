testing
test01AddNPC

	| NPC |
	
	self characterAdministration addNPC: (TTCharacter newWithName: 'Nele' role: TTCharacter npc).
	NPC := self characterAdministration npcs last.
	self assert: NPC role equals: TTCharacter npc.
	self assert: NPC name equals: 'Nele'