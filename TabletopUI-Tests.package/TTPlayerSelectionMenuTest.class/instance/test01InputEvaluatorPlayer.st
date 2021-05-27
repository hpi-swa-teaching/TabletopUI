testing
test01InputEvaluatorPlayer

	playerSelectionMenu selectedIndex: 2.
	self assert: (playerSelectionMenu screen game players at: playerSelectionMenu index) role equals: #player.
	self assert: (playerSelectionMenu screen game players at: playerSelectionMenu index) name equals: 'Giuseppe'.
	self assert: (playerSelectionMenu screen inputField inputEvaluator class) equals: TTInputEvaluator.
	self assert: (playerSelectionMenu screen inputField inputEvaluator playerName) equals: 'Giuseppe'
