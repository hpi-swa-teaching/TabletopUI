testing
test07AsString

	self diceroll 
		rolls: {10 . 12 . 3} asOrderedCollection;
		modifier: -5.
	self assert: self diceroll asString equals: '10+12+3-5=20'