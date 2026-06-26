running
assertContextStateWith: aTTCharacter

	self assert: (self parser context isKindOf: TTFightContext).
	self assert: #fight equals: self parser context gameState.
	self assert: self parser context currentPlayer name equals: aTTCharacter name