testing
test02AddPlayer

	| player |
	
	self characterAdministration addPlayer: (TTCharacter newWithName: 'Pit' role: TTCharacter player).
	player := self characterAdministration players last.
	self 
		assert: player role equals: TTCharacter player;
		assert: player name equals: 'Pit'