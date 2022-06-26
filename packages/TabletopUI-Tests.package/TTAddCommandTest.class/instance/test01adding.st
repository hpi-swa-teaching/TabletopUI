testing
test01adding

	|value1 value2 command|
	value1 := TTIntCommand newWithToken: '3'.
	value2 := TTIntCommand newWithToken: '5'.
	command := (TTAddCommand newWithLeft: value1 right: value2).
	self assert: (command execute: self context from: self character) value equals: 8