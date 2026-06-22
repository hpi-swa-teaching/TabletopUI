testing
test05InitiativeReady

	| player1 player2 |
	self context rolls: OrderedDictionary new.
	player1 := TTCharacter new
		role: #player;
		name: #player1;
		yourself.
	player2 := TTCharacter new
		role: #player;
		name: #player2
		yourself.
	
	self context processRoll: 6 for: player1.

	self context processRoll: 7 for: player2.
		
	self assert: self context initiativeReady