as yet unclassified
test00MorphOrTile

	| morph |
	
	morph := Morph new.
	
	self deny: morph equals: tile.
	self assert: morph isTTTile equals: false.
	self assert: tile isTTTile equals: true