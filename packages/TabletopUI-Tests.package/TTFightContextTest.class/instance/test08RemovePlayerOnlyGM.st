testing
test08RemovePlayerOnlyGM

	| result |
	
	result := self context removePlayer: self gm name from: self player.
	self assert: self context onlyGMIsAllowedMessageString equals: result.
	