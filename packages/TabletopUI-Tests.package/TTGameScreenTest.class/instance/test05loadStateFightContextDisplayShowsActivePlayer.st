testing
test05loadStateFightContextDisplayShowsActivePlayer

	self playerGameScreen loadState: self fightingState1.
	self assert: self playerGameScreen playerSelectionMenu currentPlayer equals: 'Gregori'.
	
	self playerGameScreen loadState: self fightingState2.
	self assert: self playerGameScreen playerSelectionMenu currentPlayer equals: 'Giuseppe'