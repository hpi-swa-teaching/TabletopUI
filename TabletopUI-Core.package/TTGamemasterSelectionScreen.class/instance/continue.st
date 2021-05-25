screen management
continue

	self game selectAsGamemaster: (self game players at: selectedIndex).
	self window openGameScreen
