screen management
continue

	(self selectedIndex > 0) ifTrue: [
		self characterAdministration selectAsGamemaster: (self characterAdministration players at: self selectedIndex)].
	self window openGameScreen
