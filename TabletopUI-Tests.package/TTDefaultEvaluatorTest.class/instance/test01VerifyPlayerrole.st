test	ing
test01VerifyPlayerrole
	
	| result |
	
	result := inputField evaluator evaluateInput: 'start fight' from: self players first.
	self assert: result equals: (inputField evaluator messageNotAuthorised).
	result := inputField evaluator evaluateInput: 'start fight' from: gamemaster.
	self assert: result equals: ('Started Roll for Initiative').
	inputField evaluator 
		evaluateInput: 'roll d6' from: self players first;
		evaluateInput: 'roll d6' from: self players second.
	result := inputField evaluator evaluateInput: 'finalize initiative' from: self players first.
	self assert: result equals: (inputField evaluator messageNotAuthorised).
	result := inputField evaluator evaluateInput: 'finalize initiative' from: gamemaster.
	self assert: result equals: ('The fight begins!').
	inputField evaluator evaluateInput: 'end fight' from: gamemaster.