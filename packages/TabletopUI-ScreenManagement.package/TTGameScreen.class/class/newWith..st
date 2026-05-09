initialization
newWith: aTTTabletopWindow
	
	^ (super newWith: aTTTabletopWindow)
		initializeMap;
		initializeSideBar;
		initializeCommandBar;
		yourself