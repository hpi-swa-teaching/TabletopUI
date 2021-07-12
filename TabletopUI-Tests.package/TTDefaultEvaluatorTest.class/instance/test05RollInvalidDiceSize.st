test	ing
test05RollInvalidDiceSize

	| result |

	result := self evaluator evaluateInput: 'roll d7' from: self randomPlayer.
	self assert: result equals: (self evaluator messageInvalidDiceSize: 7)