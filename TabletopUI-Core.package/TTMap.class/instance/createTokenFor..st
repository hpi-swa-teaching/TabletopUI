token placement
createTokenFor: aTTCharacter

	| tile position |
	
	position := self findFreeTile.
	tile := self tiles at: position x at: position y.
	tile addToken:
		(TTToken newWithTile: tile character: aTTCharacter)