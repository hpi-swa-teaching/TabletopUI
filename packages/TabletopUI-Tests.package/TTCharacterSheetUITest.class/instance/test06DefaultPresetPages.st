testing - construction
test06DefaultPresetPages

	| display |
	
	self playerSelectionMenu selectedIndex: 1.
	display := self openDisplay.
	self assert: display model className equals: 'Adventurer'.
	1 to: display maximumPageCount do: [:pageNumber |
		self shouldnt: [display layoutPage: pageNumber] raise: Error]