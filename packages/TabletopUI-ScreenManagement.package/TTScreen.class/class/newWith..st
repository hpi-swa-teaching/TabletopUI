initialization
newWith: aTTTabletopWindow

	| screen |
	screen := aTTTabletopWindow networkFacade instantiate: self.
	screen 
		window: aTTTabletopWindow;
		characterAdministration: aTTTabletopWindow characterAdministration.
	^ screen.