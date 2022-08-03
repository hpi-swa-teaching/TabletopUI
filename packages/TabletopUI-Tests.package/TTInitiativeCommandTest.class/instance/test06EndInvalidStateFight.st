testing
test06EndInvalidStateFight

	| result |

	self context gameState: #fight.
	result := command executeEnd: self context from: self character.
	self assert: self context wrongContextErrorString equals: result errorMessage
	