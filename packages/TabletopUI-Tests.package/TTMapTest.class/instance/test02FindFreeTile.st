testing
test02FindFreeTile

	self assert: self map findFreeTile equals: 1 @ 1.
	self map createTokenFor: (TTCharacter newWithName: '' role: TTCharacter player).
	self assert: self map findFreeTile equals: 1 @ 2