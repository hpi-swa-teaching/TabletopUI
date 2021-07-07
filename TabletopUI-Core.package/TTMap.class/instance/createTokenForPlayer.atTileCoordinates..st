token placement
createTokenForPlayer: aTTPlayer atTileCoordinates: aPoint

	| tile |
	
	tile := self tiles at: aPoint y at: aPoint x.
	tile addToken: 
		(TTToken newWithTile: tile character: aTTPlayer)