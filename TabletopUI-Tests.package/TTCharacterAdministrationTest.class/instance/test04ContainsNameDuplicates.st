testing
test04ContainsNameDuplicates

	| player |
	
	player := TTCharacter newWithName: 'Pia' role: TTCharacter player.
	self deny: self characterAdministration containsNameDuplicates.
	self characterAdministration addPlayer: player.
	self assert: self characterAdministration containsNameDuplicates