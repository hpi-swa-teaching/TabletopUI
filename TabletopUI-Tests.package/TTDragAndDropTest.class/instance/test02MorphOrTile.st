testing
test02MorphOrTile

	| morph |
	
	morph := Morph new.
	
	self 
		deny: morph equals: tile;
		assert: morph isTTTile equals: false;
		assert: tile isTTTile equals: true