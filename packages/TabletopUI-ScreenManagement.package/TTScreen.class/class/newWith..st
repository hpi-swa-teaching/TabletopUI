initialization
newWith: aTTTabletopWindow

	^ self new
		window: aTTTabletopWindow;
		networkmanager: aTTTabletopWindow networkmanager;
		characterAdministration: aTTTabletopWindow characterAdministration;
		yourself