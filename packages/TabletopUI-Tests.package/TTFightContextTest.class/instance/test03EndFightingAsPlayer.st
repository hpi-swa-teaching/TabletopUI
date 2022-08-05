testing
test03EndFightingAsPlayer

	| result |
	result := self context endFightingAs: self player.
	self assert: self context onlyGMIsAllowedMessageString equals: result.
	self assert: #fight equals: self parser context gameState
	