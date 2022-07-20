testing
test03StartFightAsPlayer

	| player result |
	player := TTCharacter new
		role: #player;
		yourself.
	
	result := self context startFightAs: player.
	self assert: self context onlyGMIsAllowedMessageString equals: result.
	self assert: #default equals: self parser context gameState