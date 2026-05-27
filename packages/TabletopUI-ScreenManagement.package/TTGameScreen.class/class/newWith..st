initialization
newWith: aTTTabletopWindow

	| window |
	
	window := super newWith: aTTTabletopWindow.
	window initializeCommandBar;
		initializeMap;
		initializeSideBar;
		initializeMultipanel;
		yourself.
	^ window