testing
test04EndFight
	
	| command |
	command := self parser parse: 'end fight'.
	self assert: (command isKindOf: TTEndCommand).
	self assert: (command action isKindOf: TTFightCommand).
	