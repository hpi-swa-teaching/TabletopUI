initialization
newWith: anOrderedCollection and: aNumber

	^ self new
		characterList: anOrderedCollection;
		currentPlayer: aNumber;
		yourself