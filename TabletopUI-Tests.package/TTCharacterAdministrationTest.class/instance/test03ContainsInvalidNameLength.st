testing
test03ContainsInvalidNameLength

	| player |
	
	player := TTCharacter newWithName: 'Piaaaaaaaaaaaaaaaaaaaaaaaa' role: TTCharacter player.
	self deny: self characterAdministration containsInvalidNameLength.
	self characterAdministration addPlayer: player.
	self assert: self characterAdministration containsInvalidNameLength