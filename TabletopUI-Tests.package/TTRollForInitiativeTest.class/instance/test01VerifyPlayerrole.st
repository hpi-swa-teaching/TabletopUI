as yet unclassified
test01VerifyPlayerrole
	
	| result |
	
	result := inputField evaluator evaluateInput: 'start fight' from: (regularPlayers at: 1).
	self assert: result equals: (inputField evaluator ErrorNotAuthorised).
	result := inputField evaluator evaluateInput: 'start fight' from: gamemaster.
	self assert: result equals: ('Started Roll for Initiative').
	inputField evaluator evaluateInput: 'roll d6' from: (regularPlayers at: 1).
	inputField evaluator evaluateInput: 'roll d6' from: (regularPlayers at: 2).
	result := inputField evaluator evaluateInput: 'finalize initiative' from: (regularPlayers at: 1).
	self assert: result equals: (inputField evaluator ErrorNotAuthorised).
	result := inputField evaluator evaluateInput: 'finalize initiative' from: gamemaster.
	self assert: result equals: ('Ended Roll for Initiative.').
	inputField evaluator evaluateInput: 'end fight' from: gamemaster.