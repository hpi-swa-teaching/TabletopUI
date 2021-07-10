as yet unclassified
test05SelectedIndexZero

	self screen selectedIndex: 3.
	self screen selectedIndex: 0.
	self assert: self screen selectedIndex equals: 3