testing
test03GMCanNotRoll

	| gm result |
	gm := TTCharacter new
		role: #gamemaster;
		yourself.
		
	result := self context processRoll: 6 for: gm.
	self assert: self context onlyPlayersRollMessageString equals: result
	