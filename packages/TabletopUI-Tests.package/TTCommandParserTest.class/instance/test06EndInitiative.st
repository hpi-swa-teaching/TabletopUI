testing
test06EndInitiative
	
	| command |
	command := self parser parse: 'end initiative'.
	self assert: (command isKindOf: TTEndCommand).
	self assert: (command action isKindOf: TTInitiativeCommand).
	