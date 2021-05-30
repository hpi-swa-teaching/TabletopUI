as yet unclassified
newIn: aTTTabletopWindow

	^ self new 
		window: aTTTabletopWindow;
		game: aTTTabletopWindow game;
		playerSelectionMenu: (TTPlayerSelectionMenu newWithGame: aTTTabletopWindow game);
		initializeInputFieldAndMap;
		yourself