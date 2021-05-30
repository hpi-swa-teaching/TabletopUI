initialization
initializePlayerTokens: aCollection

	aCollection withIndexDo: [:aTTPlayer :index | self createTokenForPlayer: aTTPlayer atTileCoordinates: 1 @ index]