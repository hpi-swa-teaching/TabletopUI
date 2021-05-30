initialization
initializeInputFieldAndMap

	self inputField: (TTInputField newWithActionLog: self actionLog playerSelectionMenu: self playerSelectionMenu).
	self scrollPane: (TTScrollPane newWithPlayers: self game players)