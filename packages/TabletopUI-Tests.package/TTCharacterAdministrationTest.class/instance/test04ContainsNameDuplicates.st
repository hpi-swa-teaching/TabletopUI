testing
test04ContainsNameDuplicates

	| player |
	
	player := TTCharacter newWithName: 'Pia' role: TTCharacter player.
	self characterAdministration addPlayer: player.
	self assert: self characterAdministration containsNameDuplicates