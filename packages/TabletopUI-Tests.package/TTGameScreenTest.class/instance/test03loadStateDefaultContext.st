testing
test03loadStateDefaultContext

	self gamemasterGameScreen loadState: self defaultState.
	self playerGameScreen loadState: self defaultState.
	
	self assert: self gamemasterGameScreen playerSelectionMenu class equals: TTGMSelectionMenu.
	self assert: self playerGameScreen playerSelectionMenu class equals: TTRestrictedSelectionMenu