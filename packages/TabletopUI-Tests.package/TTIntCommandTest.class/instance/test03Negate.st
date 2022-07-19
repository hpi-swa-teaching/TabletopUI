running
test03Negate

	| result command |
	command := TTIntCommand newWithToken: '420'.
	command negate.
	result := command execute: self context from: self character.
	self assert: -420 equals: result value