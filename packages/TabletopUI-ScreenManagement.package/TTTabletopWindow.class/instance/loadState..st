initialization
loadState: aDictionary

	| oldContext |
	oldContext := self context.
	self characterAdministration loadState: ((aDictionary at: #map) at: #characterTokens).
	
	self openGameScreen.
	self screen loadState: aDictionary.
	self context: self screen inputField parser context.
	self updateNewContext: oldContext