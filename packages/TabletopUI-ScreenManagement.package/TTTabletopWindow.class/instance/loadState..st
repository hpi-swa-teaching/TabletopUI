initialization
loadState: aDictionary
	
	self characterAdministration loadState: ((aDictionary at: #map) at: #characterTokens).
	self openGameScreen.
	self gamescreen loadState: aDictionary