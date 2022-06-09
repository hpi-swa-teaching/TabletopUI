testing
test06EndInitiative
	
	| command |
	command := parser parse: 'end initiative'.
	self assert: (command isKindOf: TTEndCommand).
	self assert: (command action isKindOf: TTInitiativeCommand).
	