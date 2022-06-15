initialization
newWith: aCollection

	^ self new
		initializePlayerTokens: aCollection;
		rulerToolDeactivate;
		yourself