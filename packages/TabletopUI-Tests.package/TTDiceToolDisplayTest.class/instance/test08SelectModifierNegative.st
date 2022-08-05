testing
test08SelectModifierNegative

	self diceToolDisplay modifierChanged: '-4'.
	self assert: self diceToolDisplay modifier equals: -4
