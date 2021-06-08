as yet unclassified
test01VerifyPlayerrole
	
	| result |
	
	result := inputField evaluator evaluateInput: 'start fight' from: regularPlayer.
	self assert: result equals: (inputField evaluator ErrorNotAuthorised).
	result := inputField evaluator evaluateInput: 'start fight' from: gamemaster.
	self assert: result equals: ('Started Roll for Initiative').
	result := inputField evaluator evaluateInput: 'end fight' from: regularPlayer.
	self assert: result equals: (inputField evaluator ErrorNotAuthorised).
	result := inputField evaluator evaluateInput: 'end fight' from: gamemaster.
	self assert: result equals: ('Ended Roll for Initiative').