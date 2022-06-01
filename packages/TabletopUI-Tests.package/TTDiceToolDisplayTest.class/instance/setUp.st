running
setUp

	self players: {
		(TTCharacter newWithName: 'a' role: TTCharacter player) . 
		(TTCharacter newWithName: 'b' role: TTCharacter player) .
		(TTCharacter newWithName: 'c' role: TTCharacter player)} asOrderedCollection.
	self mockInputField: TTMockInputField new.
	self diceToolDisplay: (TTDiceToolDisplay newWith:  self players  and: self mockInputField)