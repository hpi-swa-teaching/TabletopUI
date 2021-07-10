testing
test02ValidateAndCreateNPC

	self assert: self tokenBar characterAdministration npcs size equals: 0.
	self tokenBar validateAndCreateNPC.
	self 
		assert: self tokenBar characterAdministration npcs size equals: 1;
		assert: self tokenBar characterAdministration npcs first role equals: #npc;
		assert: self tokenBar characterAdministration npcs first name equals: 'Bert'
