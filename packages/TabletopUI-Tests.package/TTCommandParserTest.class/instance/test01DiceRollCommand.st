testing
test01DiceRollCommand
	
	| command |
	command := parser parse: 'roll d20'.
	self assert: (command isKindOf: TTRollCommand).
	self assert: (command rollable isKindOf: TTDiceCommand).