view management
consoleView

	self viewContainer
		addMorph: self console
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 0.9)).
	self viewContainer
		addMorph: self inputField
		fullFrame: (LayoutFrame fractions: (0 @ 0.9 corner: 1 @ 1))