initialization
newWith: aTTTabletopWindow

	^ self new 
		window: aTTTabletopWindow;
		characterAdministration: aTTTabletopWindow characterAdministration;
		yourself
