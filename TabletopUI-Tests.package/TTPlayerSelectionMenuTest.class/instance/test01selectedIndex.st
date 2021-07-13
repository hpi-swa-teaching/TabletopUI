testing
test01selectedIndex

	self playerSelectionMenu selectedIndex: 1.
	self assert: self playerSelectionMenu selectedIndex equals: 1.
	self playerSelectionMenu selectedIndex: 2.
	self assert: self playerSelectionMenu selectedIndex equals: 2.
	self playerSelectionMenu selectedIndex: 0.
	self assert: self playerSelectionMenu selectedIndex equals: 2

