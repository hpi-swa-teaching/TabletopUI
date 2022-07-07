initialization
newWith: aTTTabletopWindow

	^ self new 
		window: aTTTabletopWindow;
		characterAdministration: aTTTabletopWindow characterAdministration;
		subWindowManager: aTTTabletopWindow subWindowManager;
		yourself
