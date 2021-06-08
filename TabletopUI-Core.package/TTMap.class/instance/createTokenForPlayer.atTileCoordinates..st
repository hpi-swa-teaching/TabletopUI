token placement
createTokenForPlayer: aTTPlayer atTileCoordinates: aPoint

	(self tiles at: aPoint y at: aPoint x) addToken: 
		(TTPlayerToken newWith: (self tiles at: aPoint y at: aPoint x) player: aTTPlayer)