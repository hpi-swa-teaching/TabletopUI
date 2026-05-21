testing
test04SelectedIndex

	self screen selectedIndex: 2.
	self assert: self screen selectedIndex equals: 2.
	self screen selectedIndex: 0.
	self assert: self screen selectedIndex equals: 2.