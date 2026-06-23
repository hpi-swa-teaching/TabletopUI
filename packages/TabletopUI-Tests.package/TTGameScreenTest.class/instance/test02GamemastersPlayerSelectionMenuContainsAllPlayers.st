as yet unclassified
test02GamemastersPlayerSelectionMenuContainsAllPlayers

	self assert: self gamemasterGameScreen playerSelectionMenu nameList = (self characterAdministration players collect: [:player | player name])