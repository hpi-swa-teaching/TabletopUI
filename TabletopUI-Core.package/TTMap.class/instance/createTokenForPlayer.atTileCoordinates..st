token placement
createTokenForPlayer: aTTPlayer atTileCoordinates: aPoint

	| tile |
	
	tile := self tiles at: aPoint y at: aPoint x.
	tile addToken: 
		(TTPlayerToken newWith: tile player: aTTPlayer)