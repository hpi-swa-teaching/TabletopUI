testing
test12RollTwiceAcrossLoadStateRebuild

	| firstPlayer rebuiltPlayer result roll1 roll2 |
	roll1 := self randomRoll.
	roll2 := self randomRoll.
	firstPlayer := TTCharacter newWithName: 'ds' role: TTCharacter player.
	rebuiltPlayer := TTCharacter newWithName: 'ds' role: TTCharacter player.
	self context processRoll: roll1 for: firstPlayer.
	result := self context processRoll: roll2 for: rebuiltPlayer.
	self assert: self context multipleRollsMessageString equals: result