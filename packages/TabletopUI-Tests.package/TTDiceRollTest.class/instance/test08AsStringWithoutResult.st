testing
test08AsStringWithoutResult

	self diceroll 
		rolls: {10 . 12 . 3} asOrderedCollection;
		modifier: -5.
	self assert: self diceroll asStringWithoutResult equals: '10+12+3-5'