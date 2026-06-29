testing
test05EndTurn
	
	| command |
	command := self parser parse: 'end turn'.
	self assert: (command isKindOf: TTEndCommand).
	self assert: (command action isKindOf: TTTurnCommand).
	