testing
test02consoleButtonShowsConsole

	| viewContainer |
	viewContainer := self multiPanel viewContainer.
	
	self multiPanel
		changeViewTo: #players;
		openConsole.
	self
		assert: (viewContainer submorphs first) equals: self multiPanel inputField;
		assert: (viewContainer submorphs second) equals: self multiPanel console