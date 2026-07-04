updating
addToState: aDict PlayerWithName: name role: role

	((aDict at: #map) at: #characterTokens) at: name put: (self newPlayerStateDict: name role: role)