initialization
initializePlayerTokens: aCollection

	(aCollection isEmpty) ifFalse: [
		aCollection do: [:aTTPlayer | self createTokenFor: aTTPlayer]]