testing
test02SelectModifier

	self diceToolDisplay modifierChanged: '8'.
	self assert: self diceToolDisplay modifier equals: 8
