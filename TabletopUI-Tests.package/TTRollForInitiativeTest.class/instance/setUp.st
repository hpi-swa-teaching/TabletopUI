as yet unclassified
setUp

	super setUp.
	
	inputField := TTInputField new.
	gamemaster := TTPlayer new.
	gamemaster role: #gamemaster.
	gamemaster changeName: 'gm'.
	regularPlayer := TTPlayer new