testing
test12RollTwiceAcrossLoadStateRebuild

	| firstPlayer rebuiltPlayer result |
	firstPlayer := TTCharacter newWithName: 'ds' role: TTCharacter player.
	rebuiltPlayer := TTCharacter newWithName: 'ds' role: TTCharacter player.
	self context processRoll: 7 for: firstPlayer.
	result := self context processRoll: 4 for: rebuiltPlayer.
	self assert: self context multipleRollsMessageString equals: result