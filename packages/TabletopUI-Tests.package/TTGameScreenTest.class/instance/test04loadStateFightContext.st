testing
test04loadStateFightContext

	self gamemasterGameScreen loadState: self fightingState1.
	self playerGameScreen loadState: self fightingState1.
	
	self assert: self gamemasterGameScreen playerSelectionMenu class equals: TTGMSelectionMenu.
	self assert: self playerGameScreen playerSelectionMenu class equals: TTRestrictedSelectionMenu