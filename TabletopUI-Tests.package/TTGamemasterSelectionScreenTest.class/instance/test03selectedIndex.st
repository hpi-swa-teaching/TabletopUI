as yet unclassified
test03selectedIndex

	screen selectedIndex: 3.
	self assert: screen selectedIndex equals: 3.
	screen selectedIndex: 0.
	self assert: screen selectedIndex equals: 3.
	screen selectedIndex: 1.
	self assert: screen selectedIndex equals: 1