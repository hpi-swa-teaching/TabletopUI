evaluator creation
createUpdatedInputEvaluator

	| player |
	
	player := self screen game players at: self index.

	^ ((self createInputEvaluatorForRole: (player role)) 
		playerName: (player name))

	
