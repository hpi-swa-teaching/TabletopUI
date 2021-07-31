initialization
newWith: aTTTabletopWindow
	
	^ (super newWith: aTTTabletopWindow)
		initializeCommandBar;
		initializeMapAndSideBar;
		yourself