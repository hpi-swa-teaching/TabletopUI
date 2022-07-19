running
test02CorrectValueWhenExecuted

	| result command |
	command := TTIntCommand newWithToken: '420'.
	result := command execute: self context from: self character.
	self assert: 420 equals: result value.
	self assert: '420' equals: result outputString