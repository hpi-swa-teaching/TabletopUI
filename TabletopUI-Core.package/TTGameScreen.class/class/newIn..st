initialization
newIn: aTTTabletopWindow
	
	^ self new
		window: aTTTabletopWindow;
		game: aTTTabletopWindow game;
		initializeCommandBar;
		initializeMapAndSideBar;
		yourself