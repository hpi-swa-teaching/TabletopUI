screen management
continue

	(self selectedIndex > 0) ifTrue: [
		self game selectAsGamemaster: (self game players at: self selectedIndex)].
	self window openGameScreen
