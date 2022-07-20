testing
test07EndInitiative

	| player1 player2 gm|
	player1 := TTCharacter new
		role: #player;
		yourself.
	player2 := TTCharacter new
		role: #player;
		yourself.
	gm := TTCharacter new
		role: #gamemaster;
		yourself.
	
	self context processRoll: 6 for: player1.
	self context processRoll: 9 for: player2.
	self context endInitiativePhaseFrom: gm.
	
	self assert: #fight equals: self parser context gameState