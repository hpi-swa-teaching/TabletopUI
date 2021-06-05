as yet unclassified
test02SaveRoll
	
	| result |
	
	inputField inputEvaluator evaluateInput: 'start fight' from: gamemaster.
	result := inputField inputEvaluator evaluateInput: 'roll d4' from: regularPlayer.
	self assert: (result asNumber >= 1 and: [result asNumber <= 4]).
	self assert: (inputField inputEvaluator rolls at: (regularPlayer name)) = (result asNumber).
	result := inputField inputEvaluator evaluateInput: 'roll d4' from: regularPlayer.
	self assert: result equals: inputField inputEvaluator ErrorMultipleRolls.
	result := inputField inputEvaluator evaluateInput: 'roll d4' from: gamemaster.
	self assert: result equals: inputField inputEvaluator ErrorOnlyPlayersRoll