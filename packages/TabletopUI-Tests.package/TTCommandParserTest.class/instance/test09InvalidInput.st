testing
test09InvalidInput
	
	| command |
	command := self parser parse: 'roll start end'.
	self assert: (command isKindOf: TTErrorCommand)