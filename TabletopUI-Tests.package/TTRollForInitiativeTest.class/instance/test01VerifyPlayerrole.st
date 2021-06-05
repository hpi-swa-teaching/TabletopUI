as yet unclassified
test01VerifyPlayerrole
	
	| result |
	
	result := inputField inputEvaluator evaluateInput: 'start fight' from: regularPlayer.
	self assert: result equals: (inputField inputEvaluator ErrorNotAuthorised).
	result := inputField inputEvaluator evaluateInput: 'start fight' from: gamemaster.
	self assert: result equals: ('Started Roll for Initiative').
	result := inputField inputEvaluator evaluateInput: 'end fight' from: regularPlayer.
	self assert: result equals: (inputField inputEvaluator ErrorNotAuthorised).
	result := inputField inputEvaluator evaluateInput: 'end fight' from: gamemaster.
	self assert: result equals: ('Ended Roll for Initiative').