running
setUp

	self inputField: TTInputField new.
	self evaluator: TTInputEvaluator new.
	self gamemaster: (TTCharacter newWithName: 'gm' role: TTCharacter gamemaster).
	self players: {
		(TTCharacter newWithName: 'a' role: TTCharacter player) . 
		(TTCharacter newWithName: 'b' role: TTCharacter player) .
		(TTCharacter newWithName: 'c' role: TTCharacter player)} asOrderedCollection
