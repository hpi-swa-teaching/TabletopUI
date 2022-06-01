testing
test02SelectModifier

	self assert: self diceToolDisplay modifier equals: 0.
	self diceToolDisplay modifierChanged: '8'.
	self assert: self diceToolDisplay modifier equals: 8.
	self diceToolDisplay modifierChanged: '-4'.
	self assert: self diceToolDisplay modifier equals: -4.
	self diceToolDisplay modifierChanged: '0'.
	self assert: self diceToolDisplay modifier equals: 0.
	self diceToolDisplay modifierChanged: ''.
	self assert: self diceToolDisplay modifier equals: 0.
