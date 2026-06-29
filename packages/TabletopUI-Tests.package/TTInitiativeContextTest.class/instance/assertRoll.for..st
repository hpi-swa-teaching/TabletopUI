running
assertRoll: aNumber for: aTTCharacter

	self assert: (self context processRoll: aNumber for: aTTCharacter) isNil.