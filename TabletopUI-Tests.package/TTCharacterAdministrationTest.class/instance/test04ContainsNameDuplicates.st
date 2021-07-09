testing
test04ContainsNameDuplicates

	| NPC |
	
	NPC := TTCharacter newWithName: 'Pia' role: #player.
	self deny: self characterAdministration containsNameDuplicates.
	self characterAdministration addNPC: NPC.
	self assert: self characterAdministration containsNameDuplicates