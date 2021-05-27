testing
test00InputEvaluatorGamemaster

	playerSelectionMenu selectedIndex: 1.
	self assert: (playerSelectionMenu screen game players at: playerSelectionMenu index) role equals: #gamemaster.
	self assert: (playerSelectionMenu screen game players at: playerSelectionMenu index) name equals: 'Gustavo'.
	self assert: (playerSelectionMenu screen inputField inputEvaluator class) equals: TTGamemasterInputEvaluator.
	self assert: (playerSelectionMenu screen inputField inputEvaluator playerName) equals: 'Gustavo'
