as yet unclassified
setUp
	
	self screen: TTCharacterBuilderScreen new.
	self window: TTTabletopWindow new.
	self screen window: self window.
	self characterAdministration: self window characterAdministration.
	self characterAdministration
		playerCount: 2;
		addPlayer: (TTCharacter newWithName: 'playerA' role: TTCharacter player);
		addPlayer: (TTCharacter newWithName: 'playerB' role: TTCharacter gamemaster).
	self screen characterAdministration: self characterAdministration.
	self screen	characterIndex: 1.
	self screen selectedPresets: Dictionary new. 
	self screen selectedPresets at: 1 put: 'build character'.
	self screen selectedPresets at: 2 put: 'gamemaster'