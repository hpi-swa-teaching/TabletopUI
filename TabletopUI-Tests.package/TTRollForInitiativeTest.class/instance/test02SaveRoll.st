testing
test02SaveRoll
	
	| result |
	
	inputField evaluator evaluateInput: 'start fight' from: gamemaster.
	result := inputField evaluator evaluateInput: 'roll d4' from: (regularPlayers at: 1).
	self 
		assert: (result resultValue between: 1 and: 4);
		assert: (inputField evaluator rolls at: (regularPlayers at: 1 name)) = (result resultValue).
	result := inputField evaluator evaluateInput: 'roll d4' from: (regularPlayers at: 1).
	self assert: result equals: inputField evaluator messageMultipleRolls.
	result := inputField evaluator evaluateInput: 'roll d4' from: gamemaster.
	self assert: result equals: inputField evaluator messageOnlyPlayersRoll.
	inputField evaluator evaluateInput: 'end fight' from: gamemaster