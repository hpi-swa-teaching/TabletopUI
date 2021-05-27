evaluator creation
createInputEvaluatorForRole: aSymbol

	(aSymbol = #gamemaster) ifTrue: [
		^ TTGamemasterInputEvaluator new]
	ifFalse: [
		^ TTInputEvaluator new]