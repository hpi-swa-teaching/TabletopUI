testing
test02StartFight

	| gamemaster |
	gamemaster := TTCharacter new
		role: #gamemaster;
		yourself.
	
	self context startFightAs: gamemaster.
	self assert: #initiative equals: self manager context gameState