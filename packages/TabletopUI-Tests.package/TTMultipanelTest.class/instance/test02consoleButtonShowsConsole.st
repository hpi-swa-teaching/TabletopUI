tests
test02consoleButtonShowsConsole

	| viewContainer |
	viewContainer := self multiPanel viewContainer.
	
	self multiPanel
		changeViewTo: #players;
		openConsole.

	self
		assert: (viewContainer submorphs at: 2) equals: self multiPanel console;
		assert: (viewContainer submorphs at: 1) equals: self multiPanel inputField.