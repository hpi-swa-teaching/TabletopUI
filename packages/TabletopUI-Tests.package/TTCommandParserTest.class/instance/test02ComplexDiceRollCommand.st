testing
test02ComplexDiceRollCommand
	
	| command |
	command := parser parse: 'roll d20 -4	+  d8'.
	self assert: (command isKindOf: TTRollCommand).
	self assert: (command rollable isKindOf: TTAddCommand).
	self assert: (command rollable left isKindOf: TTDiceCommand).
	self assert: (command rollable right isKindOf: TTAddCommand).
	self assert: (command rollable right left isKindOf: TTIntCommand).
	self assert: (command rollable right right isKindOf: TTDiceCommand).
	