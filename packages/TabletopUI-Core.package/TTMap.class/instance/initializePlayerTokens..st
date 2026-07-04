initialize-release
initializePlayerTokens: aCollection

	(aCollection isEmpty) ifFalse: [
		aCollection do: [:aTTCharacter | self createTokenFor: aTTCharacter]]