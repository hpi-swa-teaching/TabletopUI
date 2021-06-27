initialization
newIn: aTTTabletopWindow
	
	| gameScreen |
	^ (gameScreen := self new)
		window: aTTTabletopWindow;
		game: aTTTabletopWindow game;
		playerSelectionMenu: (TTPlayerSelectionMenu newWithGame: gameScreen game);
		inputField: (TTInputField newWithActionLog: gameScreen actionLog playerSelectionMenu: gameScreen playerSelectionMenu);
		map: (TTMap newWithPlayers: gameScreen game players);
		sidebar: (TTSidebar newWith: gameScreen map);
		yourself