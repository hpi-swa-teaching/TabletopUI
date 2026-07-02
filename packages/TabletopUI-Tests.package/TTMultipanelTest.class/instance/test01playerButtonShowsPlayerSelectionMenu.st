testing
test01playerButtonShowsPlayerSelectionMenu

	| viewContainer |
	viewContainer := self multiPanel viewContainer.
	
	self multiPanel openPlayers.

	self assert: (viewContainer submorphs first) equals: self multiPanel playerSelectionMenu