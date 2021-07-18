testing
test05SelectedIndexZero

	self screen
		selectedIndex: 3;
		selectedIndex: 0.
	self assert: self screen selectedIndex equals: 3