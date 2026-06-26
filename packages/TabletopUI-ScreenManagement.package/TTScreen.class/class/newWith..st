initialization
newWith: aTTTabletopWindow

	| screen |
	screen := aTTTabletopWindow networkFacade instantiate: self withId: 'gamescreen'.
	screen 
		window: aTTTabletopWindow;
		characterAdministration: aTTTabletopWindow characterAdministration.
	^ screen.