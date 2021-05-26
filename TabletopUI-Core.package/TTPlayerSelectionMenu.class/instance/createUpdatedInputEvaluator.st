as yet unclassified
createUpdatedInputEvaluator

	| player inputEvaluator |
	
	player := (self screen game players at: self index).
	(player role = #gamemaster) ifTrue: [
		inputEvaluator := TTGamemasterInputEvaluator new]
	ifFalse: [
		inputEvaluator := TTInputEvaluator new].
	inputEvaluator playerName: player name.
	
	^ inputEvaluator