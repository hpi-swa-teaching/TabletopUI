testing
test02FindFreeTile

	self assert: self map mapCoordinatesOfFreeTile equals: 1 @ 1.
	self map createTokenFor: (TTCharacter newWithName: '' role: TTCharacter player).
	self assert: self map mapCoordinatesOfFreeTile equals: 1 @ 2