initialization
newWithPlayers: aCollection

	^ self new
		initializePlayerTokens: aCollection;
		yourself