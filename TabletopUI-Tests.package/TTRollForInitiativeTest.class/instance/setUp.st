running
setUp

	super setUp.
	
	inputField := TTInputField new.
	gamemaster := TTCharacter new.
	gamemaster 
		role: #gamemaster;
		name: 'gm'.
	regularPlayers := {TTCharacter new . TTCharacter new . TTCharacter new} asOrderedCollection.
	regularPlayers doWithIndex: [:player :i | player name: (i asString)]