token placement
createTokenForNPC: aTTCharacter

	| tile position |
	
	position := self findFreeTile.
	tile := self tiles at: position x at: position y.
	tile addToken:
		(TTNPCToken newWith: tile npc: aTTCharacter)