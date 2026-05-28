initialization
newWith: aTTTabletopWindow

	^ self new
		window: aTTTabletopWindow;
		networkManager: aTTTabletopWindow networkManager;
		characterAdministration: aTTTabletopWindow characterAdministration;
		yourself