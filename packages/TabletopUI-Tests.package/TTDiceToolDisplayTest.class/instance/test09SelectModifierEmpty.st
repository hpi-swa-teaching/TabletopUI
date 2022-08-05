testing
test09SelectModifierEmpty

	self diceToolDisplay modifierChanged: ''.
	self assert: self diceToolDisplay modifier equals: 0
