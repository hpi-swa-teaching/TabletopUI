testing
test07EndInitiative

	| player1 player2 gm|
	self context rolls: OrderedDictionary new.
	player1 := TTCharacter new
		role: #player;
		name: #player1;
		yourself.
	player2 := TTCharacter new
		role: #player;
		name: #player2;
		yourself.
	gm := TTCharacter new
		role: #gamemaster;
		name: #player3;
		yourself.
	
	self context processRoll: 6 for: player1.
	self context processRoll: 9 for: player2.
	self context endInitiativePhaseFrom: gm.
	
	self assert: #fight equals: self manager context gameState