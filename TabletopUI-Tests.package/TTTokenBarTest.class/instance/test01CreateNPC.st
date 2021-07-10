testing
test01CreateNPC

	self assert: self tokenBar characterAdministration npcs size equals: 0.
	self tokenBar createNPC.
	self assert: self tokenBar characterAdministration npcs size equals: 1.
	self assert: self tokenBar characterAdministration npcs first role equals: #npc.
	self assert: self tokenBar characterAdministration npcs first name equals: 'Bert'
