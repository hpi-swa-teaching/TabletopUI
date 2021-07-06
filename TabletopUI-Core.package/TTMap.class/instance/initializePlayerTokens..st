initialization
initializePlayerTokens: aCollection

	(aCollection isEmpty) ifFalse: [
		aCollection withIndexDo: [:aTTPlayer :index |
			self createTokenForPlayer: aTTPlayer atTileCoordinates: 1 @ index]]