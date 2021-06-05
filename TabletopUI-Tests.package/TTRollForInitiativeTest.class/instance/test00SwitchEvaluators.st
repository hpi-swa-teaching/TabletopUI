as yet unclassified
test00SwitchEvaluators
	
	self assert: (inputField inputEvaluator isKindOf: TTDefaultEvaluator).
	inputField inputEvaluator evaluateInput: 'start fight' from: gamemaster.
	self assert: (inputField inputEvaluator isKindOf: TTInitiativeEvaluator).
	inputField inputEvaluator evaluateInput: 'end fight' from: gamemaster.
	self assert: (inputField inputEvaluator isKindOf: TTDefaultEvaluator)