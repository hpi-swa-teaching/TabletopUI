as yet unclassified
setUp
	
	window := TTTabletopWindow new.
	window characterAdministration playerCount: 2.
	window characterAdministration players: {
		TTPlayer new
			name: 'playerA';
			yourself .
		TTPlayer new
			name: 'playerB';
			yourself}.
	window openGamemasterSelectionScreen.
	screen := window contents first model