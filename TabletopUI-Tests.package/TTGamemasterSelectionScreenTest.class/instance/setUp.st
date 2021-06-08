as yet unclassified
setUp
	
	window := TTTabletopWindow new.
	window game playerCount: 2.
	window game players: {
		TTPlayer new
			name: 'playerA';
			yourself .
		TTPlayer new
			name: 'playerB';
			yourself}.
	window openGamemasterSelectionScreen.
	screen := window contents first model