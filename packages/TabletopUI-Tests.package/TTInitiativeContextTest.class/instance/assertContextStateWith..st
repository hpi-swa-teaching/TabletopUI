running
assertContextStateWith: aTTCharacter

	self assert: (self manager context isKindOf: TTFightContext).
	self assert: #fight equals: self manager context gameState.
	self assert: self manager context currentPlayer equals: aTTCharacter name