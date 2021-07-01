as yet unclassified
createNPC

	| npc |
	
	npc := TTCharacter new.
	npc changeName: ''.
	self game addNPC: npc.
	self map createTokenForNPC: npc