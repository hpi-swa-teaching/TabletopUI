testing
test04RollTwice

	| player result |
	player := TTCharacter new
		role: #player;
		yourself.
		
	self context processRoll: 6 for: player.
	result := self context processRoll: 6 for: player.
	self assert: self context multipleRollsMessageString equals: result
	