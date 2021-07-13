testing
test06ResultValue

	self diceroll 
		rolls: {10 . 12 . 3} asOrderedCollection;
		modifier: -5.
	self assert: self diceroll resultValue equals: 20