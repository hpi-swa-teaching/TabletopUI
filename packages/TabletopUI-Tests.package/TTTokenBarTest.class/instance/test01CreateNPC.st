testing
test01CreateNPC

	self tokenBar createNPC.
	self 
		assert: self tokenBar characterAdministration npcs size equals: 1;
		assert: self tokenBar characterAdministration npcs first role equals: TTCharacter npc;
		assert: self tokenBar characterAdministration npcs first name equals: 'Bert'
