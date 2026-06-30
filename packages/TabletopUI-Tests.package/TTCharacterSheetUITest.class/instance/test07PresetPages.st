testing - construction
test07PresetPages

	| display |
	
	self playerSelectionMenu selectedIndex: 2.
	display := self openDisplay.
	self assert: display model className equals: 'Wizard'.
	1 to: display maximumPageCount do: [:pageNumber |
		self shouldnt: [display layoutPage: pageNumber] raise: Error]