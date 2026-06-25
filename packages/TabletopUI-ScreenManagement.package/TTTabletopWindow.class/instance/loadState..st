initialization
loadState: aDictionary

	| gameScreen |
	self characterAdministration loadState: ((aDictionary at: #map) at: #characterTokens).
	gameScreen := self newGameScreen.
	gameScreen loadState: aDictionary.
	self changeScreen: gameScreen.
	self context: self screen inputField parser context