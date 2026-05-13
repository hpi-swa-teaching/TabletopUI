initialization
newWith: aTTTabletopWindow
	
	^ (super newWith: aTTTabletopWindow)
		initializeCommandBar;
		initializeMap;
		initializeSideBar;
		yourself