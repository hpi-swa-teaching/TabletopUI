testing
test07ProceedToNextPlayerOnlyCurrent

	| result |
	result := self context proceedToNextPlayer: self player.
	self assert: self context onlyCurrentPlayerErrorString equals: result
	