testing
test01PlayersSelectionMenuOnlyReturnsOwnerAsActive

	self assert: (self playerGameScreen playerSelectionMenu getActivePlayer name = self playerScreenOwner name).