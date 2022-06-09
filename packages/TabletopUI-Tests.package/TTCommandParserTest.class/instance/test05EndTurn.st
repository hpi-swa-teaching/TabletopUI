testing
test05EndTurn
	
	| command |
	command := parser parse: 'end turn'.
	self assert: (command isKindOf: TTEndCommand).
	self assert: (command action isKindOf: TTTurnCommand).
	