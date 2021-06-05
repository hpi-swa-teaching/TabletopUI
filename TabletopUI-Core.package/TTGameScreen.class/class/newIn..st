initialization
newIn: aTTTabletopWindow
	
	| gameScreen |
	^ (gameScreen := self new)
		window: aTTTabletopWindow;
		game: aTTTabletopWindow game;
		playerSelectionMenu: (TTPlayerSelectionMenu newWithGame: aTTTabletopWindow game);
		inputField: (TTInputField newWithActionLog: gameScreen actionLog playerSelectionMenu: gameScreen playerSelectionMenu);
		yourself