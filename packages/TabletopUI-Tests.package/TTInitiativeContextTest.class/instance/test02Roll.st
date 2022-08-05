testing
test02Roll

	| player |
	player := TTCharacter new
		role: #player;
		yourself.
		
	self context processRoll: 6 for: player.
	self assert: 6 equals: self context rolls first value
	