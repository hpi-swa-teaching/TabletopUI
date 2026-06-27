token placement
createTokenFor: aTTCharacter

	| tile position token |
	
	aTTCharacter isGamemaster ifTrue: [^ self].
	position := self findFreeTile.
	tile := self tiles at: position x at: position y.
	token := TTToken newWithTile: tile character: aTTCharacter.
	tile addToken: token.
	self tokens add: token