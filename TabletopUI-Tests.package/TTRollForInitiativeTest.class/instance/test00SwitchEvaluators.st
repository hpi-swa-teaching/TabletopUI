as yet unclassified
test00SwitchEvaluators
	
	self assert: (inputField evaluator isKindOf: TTDefaultEvaluator).
	inputField evaluator evaluateInput: 'start fight' from: gamemaster.
	self assert: (inputField evaluator isKindOf: TTInitiativeEvaluator).
	inputField evaluator evaluateInput: 'end fight' from: gamemaster.
	self assert: (inputField evaluator isKindOf: TTDefaultEvaluator)