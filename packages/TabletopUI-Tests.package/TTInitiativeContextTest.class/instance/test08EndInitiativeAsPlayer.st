testing
test08EndInitiativeAsPlayer

	| player1 player2 result |
	self context rolls: OrderedDictionary new.
	player1 := TTCharacter new
		role: #player;
		name: #player1;
		yourself.
	player2 := TTCharacter new
		role: #player;
		name: #player2;
		yourself.
	
	self context processRoll: 6 for: player1.
	self context processRoll: 9 for: player2.
	result := self context endInitiativePhaseFrom: player1.
	
	self assert: self context onlyGMIsAllowedMessageString equals: result.
	self assert: #initiative equals: self parser context gameState