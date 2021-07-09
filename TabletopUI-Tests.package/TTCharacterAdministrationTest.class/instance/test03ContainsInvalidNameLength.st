testing
test03ContainsInvalidNameLength

	| NPC |
	
	NPC := TTCharacter newWithName: 'Piaaaaaaaaaaaaaaaaaaaaaaaa' role: #player.
	self deny: self characterAdministration containsInvalidNameLength.
	self characterAdministration addNPC: NPC.
	self assert: self characterAdministration containsInvalidNameLength