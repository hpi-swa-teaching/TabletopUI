running
setUpPlayers

	self players: OrderedCollection new;
		gamemaster: (TTCharacter newWithName: 'gm' role: TTCharacter gamemaster).
	self players
		add: (TTCharacter newWithName: 'a' role: TTCharacter player);
		add: (TTCharacter newWithName: 'b' role: TTCharacter player);
		add: (TTCharacter newWithName: 'c' role: TTCharacter player);
		add: (TTCharacter newWithName: 'd' role: TTCharacter player);
		add: (TTCharacter newWithName: 'e' role: TTCharacter player)