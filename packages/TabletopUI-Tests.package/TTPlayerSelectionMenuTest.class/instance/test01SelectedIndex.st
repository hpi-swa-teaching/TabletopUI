testing
test01SelectedIndex

	self playerSelectionMenu selectedIndex: 1.
	self assert: self playerSelectionMenu selectedIndex equals: 1.
	self playerSelectionMenu selectedIndex: 2.
	self assert: self playerSelectionMenu selectedIndex equals: 2

