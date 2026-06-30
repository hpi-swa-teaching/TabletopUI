turnorder
initializeFightorderDisplay: aDictionary

	self playerSelectionMenu: (TTFightOrderDisplay
		newWith: (aDictionary at: #fightingPlayerNames) asOrderedCollection
		and: (aDictionary at: #currentPlayer))