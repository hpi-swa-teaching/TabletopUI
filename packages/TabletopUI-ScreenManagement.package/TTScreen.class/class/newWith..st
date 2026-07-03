initialization
newWith: aTTTabletopWindow

	| screen id |
	id := 'currentScreen'.
	aTTTabletopWindow networkFacade ifContainsRemove: id.
	screen := aTTTabletopWindow networkFacade instantiate: self withId: id.
	screen
		window: aTTTabletopWindow;
		characterAdministration: aTTTabletopWindow characterAdministration.
	^ screen