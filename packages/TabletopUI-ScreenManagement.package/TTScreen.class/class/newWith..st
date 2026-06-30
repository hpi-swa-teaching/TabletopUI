initialization
newWith: aTTTabletopWindow

	| screen |
	screen := aTTTabletopWindow networkFacade instantiate: self withId: 'currentScreen'.
	screen 
		window: aTTTabletopWindow;
		characterAdministration: aTTTabletopWindow characterAdministration.
	^ screen.