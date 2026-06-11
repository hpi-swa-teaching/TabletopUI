tests
test01playerButtonShowsPlayerSelectionMenu

	| viewContainer |
	viewContainer := self multiPanel viewContainer.
	
	self multiPanel openPlayers.

	self assert: (viewContainer submorphs at: 1) equals: self multiPanel playerSelectionMenu