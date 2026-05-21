initialization
newWith: aCollection and: anotherCollection
	
	^ self new
		initializePlayerTokens: aCollection;
		initializePlayerTokens: anotherCollection;
		yourself