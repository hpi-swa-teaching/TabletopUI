initialization
newWith: anOrderedCollection and: aTTCharacter

	^ self new
		characterList: anOrderedCollection;
		owningPlayer: aTTCharacter;
		yourself