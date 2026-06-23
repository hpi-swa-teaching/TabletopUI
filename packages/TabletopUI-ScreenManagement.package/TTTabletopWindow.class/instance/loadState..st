initialization
loadState: aDictionary

	self characterAdministration loadState: ((aDictionary at: #map) at: #characterTokens).
	self openGameScreen.
	self screen loadState: aDictionary.
	self context: self screen inputField parser context.
	