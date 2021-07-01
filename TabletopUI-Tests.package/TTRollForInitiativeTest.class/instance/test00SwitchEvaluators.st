as yet unclassified
test00SwitchEvaluators
	
	self assert: (inputField evaluator isKindOf: TTDefaultEvaluator).
	inputField evaluator evaluateInput: 'start fight' from: gamemaster.
	self assert: (inputField evaluator isKindOf: TTInitiativeEvaluator).
	inputField evaluator evaluateInput: 'roll d6' from: (regularPlayers at: 1).
	inputField evaluator evaluateInput: 'roll d6' from: (regularPlayers at: 2).
	inputField evaluator evaluateInput: 'finalize initiative' from: gamemaster.
	self assert: (inputField evaluator isKindOf: TTFightEvaluator).
	inputField evaluator evaluateInput: 'end fight' from: gamemaster.
	self assert: (inputField evaluator isKindOf: TTDefaultEvaluator)