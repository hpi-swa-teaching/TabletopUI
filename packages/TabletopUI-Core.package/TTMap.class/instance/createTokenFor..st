token placement
createTokenFor: aTTCharacter

	| tile position token |
	
	position := self findFreeTile.
	tile := self tiles at: position x at: position y.
	(aTTCharacter isGamemaster)
		ifFalse: [token := TTToken newWithTile: tile character: aTTCharacter.
			tile addToken: token.
			self tokens add: token]