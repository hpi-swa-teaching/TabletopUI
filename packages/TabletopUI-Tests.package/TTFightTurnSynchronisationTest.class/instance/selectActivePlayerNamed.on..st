helpers
selectActivePlayerNamed: aName on: aSessionManager

	| gameScreen idx |
	gameScreen := self gameScreenOf: aSessionManager.
	idx := gameScreen characterAdministration players indexOf: (self characterNamed: aName on: aSessionManager).
	gameScreen playerSelectionMenu selectedIndex: idx