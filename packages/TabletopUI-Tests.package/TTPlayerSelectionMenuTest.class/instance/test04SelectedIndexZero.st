testing
test04SelectedIndexZero

	self playerSelectionMenu 
		selectedIndex: 2;
		selectedIndex: 0.
	self assert: self playerSelectionMenu selectedIndex equals: 2