turnorder
initializePlayerDisplay

	self playerSelectionMenu: (TTPlayerSelectionMenuForPlayers newWith: self charactersToDisplay and: self playerOfWindow).
	self updatePlayerDisplay.
	self updateInputField