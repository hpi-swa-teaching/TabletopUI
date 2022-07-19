running
test01CorrectValue

	| command |
	command := TTIntCommand newWithToken: '69'.
	self assert: 69 equals: command value