turnorder
initializePlayerDisplay

	self playerSelectionMenu: (TTRestrictedSelectionMenu newWith: self charactersToDisplay and: self playerOfWindow).
	self updatePlayerDisplay.
	self updateInputField