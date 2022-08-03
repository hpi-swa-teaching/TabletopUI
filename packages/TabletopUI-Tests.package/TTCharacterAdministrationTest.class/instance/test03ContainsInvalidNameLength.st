testing
test03ContainsInvalidNameLength

	| player |
	
	player := TTCharacter newWithName: 'Piaaaaaaaaaaaaaaaaaaaaaaaa' role: TTCharacter player.
	self characterAdministration addPlayer: player.
	self assert: self characterAdministration containsInvalidNameLength