tests
setUp

	| window gameScreen |
	window := TTTabletopWindow new.
	window characterAdministration
		playerCount: 1;
		addPlayer: (TTCharacter new).
	
	gameScreen := TTGameScreen newWith: window.
	window changeScreen: gameScreen.
	
	self multiPanel: gameScreen multipanel.
		
	self multiPanel changeViewTo: #console