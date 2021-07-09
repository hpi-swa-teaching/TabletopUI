testing
test01AddNPC

	| NPC |
	
	self characterAdministration addNPC: (TTCharacter newWithName: 'Nele' role: #npc).
	NPC := self characterAdministration npcs last.
	self assert: NPC role equals: #npc.
	self assert: NPC name equals: 'Nele'