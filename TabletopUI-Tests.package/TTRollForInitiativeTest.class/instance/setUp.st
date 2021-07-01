as yet unclassified
setUp

	super setUp.
	
	inputField := TTInputField new.
	gamemaster := TTPlayer new.
	gamemaster role: #gamemaster.
	gamemaster changeName: 'gm'.
	regularPlayers := {TTPlayer new . TTPlayer new . TTPlayer new} asOrderedCollection.
	regularPlayers doWithIndex: [:player :i | player name: (i asString)]