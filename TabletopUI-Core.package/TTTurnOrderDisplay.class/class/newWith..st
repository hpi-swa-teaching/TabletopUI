as yet unclassified
newWith: aCollection

	^ self new
		participants: aCollection;
		currentPlayer: (aCollection at: 1);
		yourself

	