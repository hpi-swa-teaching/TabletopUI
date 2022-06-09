testing
test04EndFight
	
	| command |
	command := parser parse: 'end fight'.
	self assert: (command isKindOf: TTEndCommand).
	self assert: (command action isKindOf: TTFightCommand).
	