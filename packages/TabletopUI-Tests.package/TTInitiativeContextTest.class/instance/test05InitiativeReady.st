testing
test05InitiativeReady

	| player1 player2 |
	player1 := TTCharacter new
		role: #player;
		yourself.
	player2 := TTCharacter new
		role: #player;
		yourself.
	
	self context processRoll: 6 for: player1.
	self context processRoll: 6 for: player2.
	
	self assert: self context initiativeReady