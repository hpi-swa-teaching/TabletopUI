testing
test01PlayersSelectionMenuOnlyReturnsOwnerAsActive

	self assert: (self playerGameScreen playerSelectionMenu getActivePlayer = self playerScreenOwner name).