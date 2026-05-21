server session management
addToGameState: name role: role

	| stateDict |
	stateDict:= self gameState.
	((stateDict at: #map) at: #characterTokens)
		at: name
		put: (self newPlayerStateDict: name role: role).
		
	self loadState: stateDict.