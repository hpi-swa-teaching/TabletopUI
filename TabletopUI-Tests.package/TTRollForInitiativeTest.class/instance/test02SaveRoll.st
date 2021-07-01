as yet unclassified
test02SaveRoll
	
	| result |
	
	inputField evaluator evaluateInput: 'start fight' from: gamemaster.
	result := inputField evaluator evaluateInput: 'roll d4' from: (regularPlayers at: 1).
	self assert: (result asNumber >= 1 and: [result asNumber <= 4]).
	self assert: (inputField evaluator rolls at: (regularPlayers at: 1 name)) = (result asNumber).
	result := inputField evaluator evaluateInput: 'roll d4' from: (regularPlayers at: 1).
	self assert: result equals: inputField evaluator ErrorMultipleRolls.
	result := inputField evaluator evaluateInput: 'roll d4' from: gamemaster.
	self assert: result equals: inputField evaluator ErrorOnlyPlayersRoll.
	inputField evaluator evaluateInput: 'end fight' from: gamemaster