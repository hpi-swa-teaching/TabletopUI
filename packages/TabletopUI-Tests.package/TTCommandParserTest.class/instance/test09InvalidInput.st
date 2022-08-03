testing
test09InvalidInput
	
	| command |
	command := parser parse: 'roll start end'.
	self assert: (command isKindOf: TTErrorCommand)